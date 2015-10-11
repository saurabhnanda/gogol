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
-- Module      : Network.Google.Resource.Drive.Children.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a child from a folder.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenDelete@.
module Network.Google.Resource.Drive.Children.Delete
    (
    -- * REST Resource
      ChildrenDeleteResource

    -- * Creating a Request
    , childrenDelete'
    , ChildrenDelete'

    -- * Request Lenses
    , cddQuotaUser
    , cddPrettyPrint
    , cddUserIP
    , cddFolderId
    , cddKey
    , cddChildId
    , cddOAuthToken
    , cddFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenDelete@ method which the
-- 'ChildrenDelete'' request conforms to.
type ChildrenDeleteResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           Capture "childId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a child from a folder.
--
-- /See:/ 'childrenDelete'' smart constructor.
data ChildrenDelete' = ChildrenDelete'
    { _cddQuotaUser   :: !(Maybe Text)
    , _cddPrettyPrint :: !Bool
    , _cddUserIP      :: !(Maybe Text)
    , _cddFolderId    :: !Text
    , _cddKey         :: !(Maybe AuthKey)
    , _cddChildId     :: !Text
    , _cddOAuthToken  :: !(Maybe OAuthToken)
    , _cddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddQuotaUser'
--
-- * 'cddPrettyPrint'
--
-- * 'cddUserIP'
--
-- * 'cddFolderId'
--
-- * 'cddKey'
--
-- * 'cddChildId'
--
-- * 'cddOAuthToken'
--
-- * 'cddFields'
childrenDelete'
    :: Text -- ^ 'folderId'
    -> Text -- ^ 'childId'
    -> ChildrenDelete'
childrenDelete' pCddFolderId_ pCddChildId_ =
    ChildrenDelete'
    { _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddUserIP = Nothing
    , _cddFolderId = pCddFolderId_
    , _cddKey = Nothing
    , _cddChildId = pCddChildId_
    , _cddOAuthToken = Nothing
    , _cddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cddQuotaUser :: Lens' ChildrenDelete' (Maybe Text)
cddQuotaUser
  = lens _cddQuotaUser (\ s a -> s{_cddQuotaUser = a})

-- | Returns response with indentations and line breaks.
cddPrettyPrint :: Lens' ChildrenDelete' Bool
cddPrettyPrint
  = lens _cddPrettyPrint
      (\ s a -> s{_cddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cddUserIP :: Lens' ChildrenDelete' (Maybe Text)
cddUserIP
  = lens _cddUserIP (\ s a -> s{_cddUserIP = a})

-- | The ID of the folder.
cddFolderId :: Lens' ChildrenDelete' Text
cddFolderId
  = lens _cddFolderId (\ s a -> s{_cddFolderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cddKey :: Lens' ChildrenDelete' (Maybe AuthKey)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | The ID of the child.
cddChildId :: Lens' ChildrenDelete' Text
cddChildId
  = lens _cddChildId (\ s a -> s{_cddChildId = a})

-- | OAuth 2.0 token for the current user.
cddOAuthToken :: Lens' ChildrenDelete' (Maybe OAuthToken)
cddOAuthToken
  = lens _cddOAuthToken
      (\ s a -> s{_cddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' ChildrenDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

instance GoogleAuth ChildrenDelete' where
        _AuthKey = cddKey . _Just
        _AuthToken = cddOAuthToken . _Just

instance GoogleRequest ChildrenDelete' where
        type Rs ChildrenDelete' = ()
        request = requestWith driveRequest
        requestWith rq ChildrenDelete'{..}
          = go _cddFolderId _cddChildId _cddQuotaUser
              (Just _cddPrettyPrint)
              _cddUserIP
              _cddFields
              _cddKey
              _cddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ChildrenDeleteResource)
                      rq
