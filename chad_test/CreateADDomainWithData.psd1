@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
        }
    )

    NonNodeData = @{

        UserData = @'
            UserName,Password,Dept,Title
            craigf,P@55w0rd,Accounts,Grand Poobah
            hartlw,P@55w0rd,Accounts,Money Launderer Extraordinare
            dufoua,P@55w0rd,Servers,F-Bomb Dropper
            barric,P@55w0rd,Servers,Monkey with a Keyboard
'@

        RootOUs = 'Servers','Accounts','Groups'
        ChildOUs = 'Infrastructure','Application','Users'
        ChildOUsApp = 'Web','FTP','Octopus','ReaccomEng','SolutionPublisher','Staging','ReaccomMon','Jmeter','SQLDB'
        ChildOUsInf = 'Jenkins','Jump','Monitoring','Security','VPN'

    }
} 
