@Library('libpipelines@feature/FLOW-1850') _

hose {
    EMAIL = 'cd'
    BUILDTOOLVERSION = '3.5.0'
    NEW_VERSIONING = 'true'
    AGENT = 'ubuntu-base-ssh-1604'
    ANCHORE_TEST = false
    DEPLOYONPRS = false
    GENERATE_QA_ISSUE = false
    ANCHORE_NIGHTLY_JOB = true

    ITSERVICES = [
        ['ZOOKEEPER': [
            'image': 'jplock/zookeeper:3.5.2-alpha',
            'env': [
                  'zk_id=1'],
            'sleep': 5]]]

	ATSERVICES = [
		['ZOOKEEPER': [
			'image': 'jplock/zookeeper:3.5.2-alpha',
			'env': [
				'zk_id=1',
				'USER=\$REMOTE_USER'],
			'sleep': 5]]]

    DEV = { config ->
        echo 'THIS IS MASTER'
        doCompile(config)
        doUT(config)
        doIT(config)
        doPackage(config)
	    doDeploy(conf: config)
		doDocker(conf: config)
		doRenameImages(conf: config)
    }
}
