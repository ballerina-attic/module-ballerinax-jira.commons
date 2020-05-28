// Copyright (c) 2020 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

# A summary of a Jira project.
#
# + resourcePath - The API resource URL
# + id - The project ID
# + key - The project key
# + name - The project name
# + description - The project description
# + category - The project category
# + projectTypeKey - The type of the project: `software` or `business`
public type ProjectSummary record {
    string resourcePath?;
    string id?;
    string key?;
    string name?;
    string description?;
    string category?;
    string projectTypeKey?;
};

# Detail record of a Jira project.
#
# + resourcePath - The API resource URL
# + id - The project ID
# + key - The project key
# + name - The project name
# + description - The project description
# + leadName - The Jira username of the project lead
# + projectTypeKey - The type of the project: `software` or `business`
# + avatarUrls - The project avatar URLs
# + projectCategory - The details of the project category
# + issueTypes - The support issue types of the project
# + components - The summarized details about the components of the project
# + versions - The details of the project versions
public type Project record {
    string resourcePath?;
    string id?;
    string key?;
    string name?;
    string description?;
    string leadName?;
    string projectTypeKey?;
    AvatarUrls avatarUrls?;
    ProjectCategory projectCategory?;
    IssueType[] issueTypes?;
    ProjectComponentSummary[] components?;
    ProjectVersion[] versions?;
};

# The Jira project creation/update template.
#
# + key - The project key
# + name - The project name
# + description - The project description
# + projectTypeKey - The type of the project: `software` or `business`
# + projectTemplateKey - The template key of the project
# + lead - The Jira username of the project lead
# + url - The URL for the project
# + assigneeType - The type of assignee of the project: `PROJECT_LEAD` or `UNASSIGNED`
# + avatarId - The avatar of the new project
# + issueSecurityScheme - The issue security scheme ID
# + permissionScheme - The permission scheme ID
# + notificationScheme - The notification scheme ID
# + categoryId - The project category ID
public type ProjectRequest record {
    string key?;
    string name?;
    string projectTypeKey?;
    string projectTemplateKey?;
    string description?;
    string lead?;
    string url?;
    string assigneeType?;
    string avatarId?;
    string issueSecurityScheme?;
    string permissionScheme?;
    string notificationScheme?;
    string categoryId?;
};

# Summary of a Jira project component.
#
# + resourcePath - The API resource URL
# + id - The project component ID
# + name - The project component name
# + description - Project component description
public type ProjectComponentSummary record {
    string resourcePath?;
    string id?;
    string name?;
    string description?;
};

# Detail record of a Jira project component.
#
# + resourcePath - The API resource URL
# + id - The project component ID
# + name - The project component name
# + description - The project component description
# + leadName - Jira username of the project component lead
# + assigneeName - Jira username of the component assignee
# + assigneeType - Type of assignee (`PROJECT_DEFAULT`, `COMPONENT_LEAD`, `PROJECT_LEAD`, or `UNASSIGNED`)
# + realAssigneeName - Jira username of the project component real assignee
# + realAssigneeType - Type of the real assignee (`PROJECT_DEFAULT`, `COMPONENT_LEAD`, `PROJECT_LEAD`, or `UNASSIGNED`)
# + project - Key of the related project
# + projectId - ID of the related project
public type ProjectComponent record {
    string resourcePath?;
    string id?;
    string name?;
    string description?;
    string leadName?;
    string assigneeName?;
    string assigneeType?;
    string realAssigneeName?;
    string realAssigneeType?;
    string project?;
    string projectId?;
};

# Jira project component creation template.
#
# + name - The project component name
# + description - The project component description
# + leadUserName - Jira username of the project component lead
# + assigneeType - Type of the assignee (`PROJECT_DEFAULT`, `COMPONENT_LEAD`, `PROJECT_LEAD`, or `UNASSIGNED`)
# + project - Key of the related project
# + projectId - The ID of the related project
public type ProjectComponentRequest record {
    string name?;
    string description?;
    string leadUserName?;
    string assigneeType?;
    string project?;
    string projectId?;
};

# Detail record of a Jira project category.
#
# + resourcePath - The API resource URL
# + id - The project category ID
# + name - The project category name
# + description - The project category description
public type ProjectCategory record {
    string resourcePath?;
    string id?;
    string name?;
    string description?;
};

# Represents the Jira project category creation template object.
#
# + name - Project category name
# + description - Project category description
public type ProjectCategoryRequest record {
    string name?;
    string description?;
};

# Jira issue type status related to a Jira project.
#
# + resourcePath - The API resource URL
# + name - The related issue type name
# + id - The related issue type ID
# + statuses - Project status details related to the issue type
public type ProjectStatus record {
    string resourcePath?;
    string name?;
    string id?;
    json[] statuses?;
};

# Detail record of a Jira user.
#
# + accountId - The account ID of the user
# + resourcePath - The API resource URL
# + key - The key of the user
# + name - The name of the user
# + displayName - The display name of the user
# + emailAddress - The email address of the user
# + avatarUrls - The avatar URLs of the user
# + active - Indicates whether the user is active
# + timeZone - Time zone related to the user
# + locale - The user's locale
public type User record {
    string accountId?;
    string resourcePath?;
    string key?;
    string name?;
    string displayName?;
    string emailAddress?;
    json avatarUrls?;
    boolean active = false;
    string timeZone?;
    string locale?;
};

# Detail record of a Jira issue type.
#
# + resourcePath - The API resource URL
# + id - The issue type ID
# + name - The issue type name
# + description - The issue type description
# + iconUrl - The URL of the issue type icon
# + avatarId - The avatar ID
public type IssueType record {
    string resourcePath?;
    string id?;
    string name?;
    string description?;
    string iconUrl?;
    string avatarId?;
};

# Detail record of a Jira project version.
#
# + resourcePath - The API resource URL
# + id - The project version ID
# + name - The project version name
# + archived - Indicates whether the version is archived
# + released - Indicates whether the version is released
# + releaseDate - The release date of the project version
# + overdue - Indicates whether the version is overdue
# + userReleaseDate - User release date of the project version
# + projectId - ID of the related project
public type ProjectVersion record {
    string resourcePath?;
    string id?;
    string name?;
    boolean archived = false;
    boolean released = false;
    string releaseDate?;
    boolean overdue = false;
    string userReleaseDate?;
    string projectId?;
};

# Set of avatar URLs related to a Jira entity.
#
# + '16x16 - Avatar URL icon of size 16x16
# + '24x24 - Avatar URL icon of size 24x24
# + '32x32 - Avatar URL icon of size 32x32
# + '48x48 - Avatar URL icon of size 48x48
public type AvatarUrls record {
    string '16x16?;
    string '24x24?;
    string '32x32?;
    string '48x48?;
};

# Detail record of a Jira issue.
#
# + resourcePath - The API resource URL
# + id - The issue ID
# + key - The issue key
# + summary - The summary of the issue
# + priorityId - The issue priority ID
# + resolutionId - The issue resolution ID
# + statusId - The issue status ID
# + creatorName - The Jira username of the issue creator
# + assigneeName - The Jira username of the issue assignee
# + reporterName - The Jira username of the issue reporter
# + createdDate - The date the issue was created
# + dueDate - The due date of the issue
# + timespent - The assigned time for the issue
# + issueType - The type of the Jira issue
# + project - Summarized details of the project to which the issue is related 
# + comments - The comments on the issue
# + customFields - Custom fields, which contain the details of the issue
# + resolutionDate -The date of resolution
# + aggregatetimespent - The time spent on the issue
public type Issue record {
    string resourcePath?;
    string id?;
    string key?;
    string summary?;
    string priorityId?;
    string resolutionId?;
    string statusId?;
    string creatorName?;
    string assigneeName?;
    string reporterName?;
    string createdDate?;
    string dueDate?;
    string timespent?;
    string resolutionDate?;
    string aggregatetimespent?;
    IssueType issueType?;
    ProjectSummary project?;
    Comment[] comments?;
    json[] customFields?;
};

# Jira issue creation template.
#
# + summary - The summary of the issue
# + issueTypeId - The ID of the issue type for the new issue
# + projectId - The ID of the project related to the new issue
# + assigneeName - The Jira username of the issue assignee
public type IssueRequest record {
    string summary?;
    string issueTypeId?;
    string projectId?;
    string assigneeName?;
};

# Detail record of a Jira issue summary.
#
# + resourcePath - The API resource URL
# + id - The issue ID
# + key - The issue key
# + priorityId - The issue priority ID
# + statusId - Issue status ID
# + issueType - The type of the Jira issue
public type IssueSummary record {
    string resourcePath?;
    string id?;
    string key?;
    string priorityId?;
    string statusId?;
    IssueType issueType?;
};

# Detail record of a comment on a Jira issue.
#
# + id - The issue ID to which the comment belongs 
# + authorName - The author's name of the comment
# + authorKey - The author's key
# + body - The body of the comment
# + updatedDate - The date of creation of the comment
public type Comment record {
    string id?;
    string authorName?;
    string authorKey?;
    string body?;
    string updatedDate?;
};

# Configurations related to the `Jira Client` endpoint initialization.
#
# + baseUrl - The Jira API URL
# + clientConfig - HTTP client endpoint configuration
public type JiraConfiguration record {
    string baseUrl;
    http:ClientConfiguration clientConfig;
};
