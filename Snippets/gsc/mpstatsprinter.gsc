/*
    -- Credit to: Sheep Wizard
    DESC:
        Prints out all the info for a stats table into .log file.
        It will print the stats table for whatever game type you're on: mp, zm or cp
*/
#using scripts\shared\util_shared;


function stats()
{
    tableid = util::getStatsTableName();
    rownums = TableLookupRowCount(tableid);
    results = [];
    saveString = "";

    for(i=0; i<rownums; i++)
    {
        results = TableLookupRow(tableid, i);

        for(z=0; z<results.size; z++)
        {
            saveString += results[z] + ",";
            wait 0.05;
        }

        IPrintLn(saveString);

        saveString = "";
    }
}