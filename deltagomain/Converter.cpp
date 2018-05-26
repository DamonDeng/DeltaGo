//----------------------------------------------------------------------------
/** @file DeltagoMain.cpp
    Main function for Deltago. */
//----------------------------------------------------------------------------

#include "SgSystem.h"

#include <iostream>
#include "DeltagoMainEngine.h"
#include "GoInit.h"
#include "SgDebug.h"
#include "SgException.h"
#include "SgInit.h"
#include "GoBoard.h"
#include "GoUctBoard.h"

#include "SgGameReader.h"
#include "SgGameWriter.h"


#include <boost/utility.hpp>
#include <boost/program_options/options_description.hpp>
#include <boost/program_options/cmdline.hpp>
#include <boost/program_options/variables_map.hpp>
#include <boost/program_options/parsers.hpp>

using std::string;
namespace po = boost::program_options;

//----------------------------------------------------------------------------

namespace {

/** @name Settings from command line options */
// @{

bool g_quiet;

string g_config;

/** Player string as in DeltagoMainEngine::SetPlayer */
string g_player = "random";

const char* g_programPath;




void Help(po::options_description& desc)
{
    std::cout << "Options:\n" << desc << '\n';
    exit(1);
}

void ParseOptions(int argc, char** argv)
{
    int srand;
    po::options_description desc;
    desc.add_options()
        ("config", 
         po::value<std::string>(&g_config)->default_value(""),
         "execuate GTP commands from file before starting main command loop")
        ("help", "displays this help and exit")
        ("player", 
         po::value<std::string>(&g_player)->default_value(""),
         "player (average|ladder|liberty|maxeye|minlib|no-search|random|safe")
        ("quiet", "don't print debug messages")
        ("srand", 
         po::value<int>(&srand)->default_value(0),
         "set random seed (-1:none, 0:time(0))");
    po::variables_map vm;
    try
    {
        po::store(po::parse_command_line(argc, argv, desc), vm);
        po::notify(vm);
    }
    catch (...)
    {
        Help(desc);
    }
    if (vm.count("help"))
        Help(desc);
    if (vm.count("quiet"))
        g_quiet = true;
    if (vm.count("srand"))
        SgRandom::SetSeed(srand);
}

} // namespace

//----------------------------------------------------------------------------

int main(int argc, char** argv)
{
    if (argc > 0 && argv != 0)
    {
        g_programPath = argv[0];
        try
        {
            ParseOptions(argc, argv);
        }
        catch (const SgException& e)
        {
            SgDebug() << e.what() << "\n";
            return 1;
        }
    }
    if (g_quiet)
        SgDebugToNull();
    try
    {
        SgInit();
        GoInit();

        SgDebug() << "Starting SGF reader. \n";

        std::string inFileName("./godata/kgs_sgf/2000-12-18-2.sgf");
        // std::string outFileName("./godata/kgs_sgf/convert_2000-7-19-2.sgf");

        GoGame testingGame(19);

        std::ifstream in(inFileName);

        if (! in){

            SgDebug() << "could not open file. \n";
            return 1;
        }

        SgGameReader reader(in);
        SgNode* root = reader.ReadGame();

        if (root == 0){

            SgDebug() << "no games in file. \n";
            return 1;
        }

        SgDebugClear();

        testingGame.Init(root);

        GoBoard testingBoard(19);

        SgNode* current = root->NodeInDirection(SgNode::NEXT);

        while (!current->IsTerminal()){
            testingBoard.Play(current->NodeMove());
            SgDebugGotoXY(0, 0);
            SgDebug() << testingBoard;
            current = current->NodeInDirection(SgNode::NEXT);
        }

        SgDebug() << "Game finished. \n";
        
        
    }
    catch (const GtpFailure& e)
    {
        SgDebug() << e.Response() << '\n';
        return 1;
    }
    catch (const std::exception& e)
    {
        SgDebug() << e.what() << '\n';
        return 1;
    }
    return 0;
}

void printGoUctBoard(GoUctBoard& board){
    int boardSize = 19;
    SgBoardColor boardColor;
    string result = "";

    for (int i = 0; i< boardSize; i++){
        for (int j = 0; j< boardSize; j++){
            SgPoint curPoint = SgPointUtil::Pt(i, j);
            boardColor = board.GetColor(curPoint);
            if (boardColor == SG_BLACK){
                result = result + "*";
            } else if (boardColor == SG_WHITE){
                result = result + "O";
            } else{
                result = result + ".";
            }
            
        }
        result = result + "\n";
    }

    SgDebug() << result ;

}

