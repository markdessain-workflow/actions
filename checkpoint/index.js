const core = require('@actions/core');
const github = require('@actions/github');

try {
    const time = (new Date()).toTimeString();
    core.setOutput("start_time", time);
    core.setOutput("end_time", time);
} catch (error) {
    core.setFailed(error.message);
}