if ~ismember('GithubActionTest', parallel.listProfiles)
    parallel.importProfile("GithubActionTest.settings")
end

jm = parcluster("GithubActionTest")