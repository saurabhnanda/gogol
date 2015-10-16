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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProFilesUpdate@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Update
    (
    -- * REST Resource
      AccountUserProFilesUpdateResource

    -- * Creating a Request
    , accountUserProFilesUpdate'
    , AccountUserProFilesUpdate'

    -- * Request Lenses
    , aupfuProFileId
    , aupfuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProFilesUpdate@ method which the
-- 'AccountUserProFilesUpdate'' request conforms to.
type AccountUserProFilesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] AccountUserProFile :>
               Put '[JSON] AccountUserProFile

-- | Updates an existing account user profile.
--
-- /See:/ 'accountUserProFilesUpdate'' smart constructor.
data AccountUserProFilesUpdate' = AccountUserProFilesUpdate'
    { _aupfuProFileId :: !Int64
    , _aupfuPayload   :: !AccountUserProFile
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfuProFileId'
--
-- * 'aupfuPayload'
accountUserProFilesUpdate'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProFile -- ^ 'payload'
    -> AccountUserProFilesUpdate'
accountUserProFilesUpdate' pAupfuProFileId_ pAupfuPayload_ =
    AccountUserProFilesUpdate'
    { _aupfuProFileId = pAupfuProFileId_
    , _aupfuPayload = pAupfuPayload_
    }

-- | User profile ID associated with this request.
aupfuProFileId :: Lens' AccountUserProFilesUpdate' Int64
aupfuProFileId
  = lens _aupfuProFileId
      (\ s a -> s{_aupfuProFileId = a})

-- | Multipart request metadata.
aupfuPayload :: Lens' AccountUserProFilesUpdate' AccountUserProFile
aupfuPayload
  = lens _aupfuPayload (\ s a -> s{_aupfuPayload = a})

instance GoogleRequest AccountUserProFilesUpdate'
         where
        type Rs AccountUserProFilesUpdate' =
             AccountUserProFile
        requestClient AccountUserProFilesUpdate'{..}
          = go _aupfuProFileId (Just AltJSON) _aupfuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesUpdateResource)
                      mempty
