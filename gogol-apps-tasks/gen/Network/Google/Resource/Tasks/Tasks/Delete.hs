{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Tasks.Tasks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified task from the task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksDelete@.
module Network.Google.Resource.Tasks.Tasks.Delete
    (
    -- * REST Resource
      TasksDeleteResource

    -- * Creating a Request
    , tasksDelete'
    , TasksDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIP
    , tdKey
    , tdTaskList
    , tdTask
    , tdOAuthToken
    , tdFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksDelete@ method which the
-- 'TasksDelete'' request conforms to.
type TasksDeleteResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           Capture "task" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified task from the task list.
--
-- /See:/ 'tasksDelete'' smart constructor.
data TasksDelete' = TasksDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIP      :: !(Maybe Text)
    , _tdKey         :: !(Maybe AuthKey)
    , _tdTaskList    :: !Text
    , _tdTask        :: !Text
    , _tdOAuthToken  :: !(Maybe OAuthToken)
    , _tdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIP'
--
-- * 'tdKey'
--
-- * 'tdTaskList'
--
-- * 'tdTask'
--
-- * 'tdOAuthToken'
--
-- * 'tdFields'
tasksDelete'
    :: Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksDelete'
tasksDelete' pTdTaskList_ pTdTask_ =
    TasksDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIP = Nothing
    , _tdKey = Nothing
    , _tdTaskList = pTdTaskList_
    , _tdTask = pTdTask_
    , _tdOAuthToken = Nothing
    , _tdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TasksDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TasksDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIP :: Lens' TasksDelete' (Maybe Text)
tdUserIP = lens _tdUserIP (\ s a -> s{_tdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TasksDelete' (Maybe AuthKey)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | Task list identifier.
tdTaskList :: Lens' TasksDelete' Text
tdTaskList
  = lens _tdTaskList (\ s a -> s{_tdTaskList = a})

-- | Task identifier.
tdTask :: Lens' TasksDelete' Text
tdTask = lens _tdTask (\ s a -> s{_tdTask = a})

-- | OAuth 2.0 token for the current user.
tdOAuthToken :: Lens' TasksDelete' (Maybe OAuthToken)
tdOAuthToken
  = lens _tdOAuthToken (\ s a -> s{_tdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TasksDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

instance GoogleAuth TasksDelete' where
        _AuthKey = tdKey . _Just
        _AuthToken = tdOAuthToken . _Just

instance GoogleRequest TasksDelete' where
        type Rs TasksDelete' = ()
        request = requestWith appsTasksRequest
        requestWith rq TasksDelete'{..}
          = go _tdTaskList _tdTask _tdQuotaUser
              (Just _tdPrettyPrint)
              _tdUserIP
              _tdFields
              _tdKey
              _tdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TasksDeleteResource) rq
