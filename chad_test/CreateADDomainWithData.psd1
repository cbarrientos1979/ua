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
            craigf,P@55w0rd,Application,Grand Poobah
            hartlw,P@55w0rd,Application,Money Launderer Extraordinare
            dufoua,P@55w0rd,Infrastructure,F-Bomb Dropper
            barric,P@55w0rd,Infrastructure,Monkey with a Keyboard
'@

        GroupData = @'
            GroupName,Scope,Category,Dept
            G_iropstestapp,Global,Security,Application
            G_iropstestapplocal,Domain Local,Security,Application
            G_iropstestinf,Global,Security,Infrastructure
            G_iropstestinflocal,Domain Local,Security,Infrastucture
'@

        RootOUs = 'Servers','Accounts','Groups'
        ChildOUs = 'Infrastructure','Application'
        ChildOUsApp = 'Web','FTP','Octopus','ReaccomEng','SolutionPublisher','Staging','ReaccomMon','Jmeter','SQLDB'
        ChildOUsInf = 'Jenkins','Jump','Monitoring','Security','VPN'

    }
} 
