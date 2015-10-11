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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified attachment for the given beacon. Each attachment
-- has a unique attachment name (\`attachmentName\`) which is returned when
-- you fetch the attachment data via this API. You specify this with the
-- delete request to control which attachment is removed. This operation
-- cannot be undone.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsAttachmentsDelete@.
module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Delete
    (
    -- * REST Resource
      BeaconsAttachmentsDeleteResource

    -- * Creating a Request
    , beaconsAttachmentsDelete'
    , BeaconsAttachmentsDelete'

    -- * Request Lenses
    , badXgafv
    , badQuotaUser
    , badPrettyPrint
    , badUploadProtocol
    , badPp
    , badAccessToken
    , badUploadType
    , badAttachmentName
    , badBearerToken
    , badKey
    , badOAuthToken
    , badFields
    , badCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsAttachmentsDelete@ method which the
-- 'BeaconsAttachmentsDelete'' request conforms to.
type BeaconsAttachmentsDeleteResource =
     "v1beta1" :>
       Capture "attachmentName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Empty

-- | Deletes the specified attachment for the given beacon. Each attachment
-- has a unique attachment name (\`attachmentName\`) which is returned when
-- you fetch the attachment data via this API. You specify this with the
-- delete request to control which attachment is removed. This operation
-- cannot be undone.
--
-- /See:/ 'beaconsAttachmentsDelete'' smart constructor.
data BeaconsAttachmentsDelete' = BeaconsAttachmentsDelete'
    { _badXgafv          :: !(Maybe Text)
    , _badQuotaUser      :: !(Maybe Text)
    , _badPrettyPrint    :: !Bool
    , _badUploadProtocol :: !(Maybe Text)
    , _badPp             :: !Bool
    , _badAccessToken    :: !(Maybe Text)
    , _badUploadType     :: !(Maybe Text)
    , _badAttachmentName :: !Text
    , _badBearerToken    :: !(Maybe Text)
    , _badKey            :: !(Maybe AuthKey)
    , _badOAuthToken     :: !(Maybe OAuthToken)
    , _badFields         :: !(Maybe Text)
    , _badCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsAttachmentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'badXgafv'
--
-- * 'badQuotaUser'
--
-- * 'badPrettyPrint'
--
-- * 'badUploadProtocol'
--
-- * 'badPp'
--
-- * 'badAccessToken'
--
-- * 'badUploadType'
--
-- * 'badAttachmentName'
--
-- * 'badBearerToken'
--
-- * 'badKey'
--
-- * 'badOAuthToken'
--
-- * 'badFields'
--
-- * 'badCallback'
beaconsAttachmentsDelete'
    :: Text -- ^ 'attachmentName'
    -> BeaconsAttachmentsDelete'
beaconsAttachmentsDelete' pBadAttachmentName_ =
    BeaconsAttachmentsDelete'
    { _badXgafv = Nothing
    , _badQuotaUser = Nothing
    , _badPrettyPrint = True
    , _badUploadProtocol = Nothing
    , _badPp = True
    , _badAccessToken = Nothing
    , _badUploadType = Nothing
    , _badAttachmentName = pBadAttachmentName_
    , _badBearerToken = Nothing
    , _badKey = Nothing
    , _badOAuthToken = Nothing
    , _badFields = Nothing
    , _badCallback = Nothing
    }

-- | V1 error format.
badXgafv :: Lens' BeaconsAttachmentsDelete' (Maybe Text)
badXgafv = lens _badXgafv (\ s a -> s{_badXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
badQuotaUser :: Lens' BeaconsAttachmentsDelete' (Maybe Text)
badQuotaUser
  = lens _badQuotaUser (\ s a -> s{_badQuotaUser = a})

-- | Returns response with indentations and line breaks.
badPrettyPrint :: Lens' BeaconsAttachmentsDelete' Bool
badPrettyPrint
  = lens _badPrettyPrint
      (\ s a -> s{_badPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
badUploadProtocol :: Lens' BeaconsAttachmentsDelete' (Maybe Text)
badUploadProtocol
  = lens _badUploadProtocol
      (\ s a -> s{_badUploadProtocol = a})

-- | Pretty-print response.
badPp :: Lens' BeaconsAttachmentsDelete' Bool
badPp = lens _badPp (\ s a -> s{_badPp = a})

-- | OAuth access token.
badAccessToken :: Lens' BeaconsAttachmentsDelete' (Maybe Text)
badAccessToken
  = lens _badAccessToken
      (\ s a -> s{_badAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
badUploadType :: Lens' BeaconsAttachmentsDelete' (Maybe Text)
badUploadType
  = lens _badUploadType
      (\ s a -> s{_badUploadType = a})

-- | The attachment name (\`attachmentName\`) of the attachment to remove.
-- For example:
-- \`beacons\/3!893737abc9\/attachments\/c5e937-af0-494-959-ec49d12738\`
-- Required.
badAttachmentName :: Lens' BeaconsAttachmentsDelete' Text
badAttachmentName
  = lens _badAttachmentName
      (\ s a -> s{_badAttachmentName = a})

-- | OAuth bearer token.
badBearerToken :: Lens' BeaconsAttachmentsDelete' (Maybe Text)
badBearerToken
  = lens _badBearerToken
      (\ s a -> s{_badBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
badKey :: Lens' BeaconsAttachmentsDelete' (Maybe AuthKey)
badKey = lens _badKey (\ s a -> s{_badKey = a})

-- | OAuth 2.0 token for the current user.
badOAuthToken :: Lens' BeaconsAttachmentsDelete' (Maybe OAuthToken)
badOAuthToken
  = lens _badOAuthToken
      (\ s a -> s{_badOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
badFields :: Lens' BeaconsAttachmentsDelete' (Maybe Text)
badFields
  = lens _badFields (\ s a -> s{_badFields = a})

-- | JSONP
badCallback :: Lens' BeaconsAttachmentsDelete' (Maybe Text)
badCallback
  = lens _badCallback (\ s a -> s{_badCallback = a})

instance GoogleAuth BeaconsAttachmentsDelete' where
        _AuthKey = badKey . _Just
        _AuthToken = badOAuthToken . _Just

instance GoogleRequest BeaconsAttachmentsDelete'
         where
        type Rs BeaconsAttachmentsDelete' = Empty
        request = requestWith proximityBeaconRequest
        requestWith rq BeaconsAttachmentsDelete'{..}
          = go _badAttachmentName _badXgafv _badUploadProtocol
              (Just _badPp)
              _badAccessToken
              _badUploadType
              _badBearerToken
              _badCallback
              _badQuotaUser
              (Just _badPrettyPrint)
              _badFields
              _badKey
              _badOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy BeaconsAttachmentsDeleteResource)
                      rq
