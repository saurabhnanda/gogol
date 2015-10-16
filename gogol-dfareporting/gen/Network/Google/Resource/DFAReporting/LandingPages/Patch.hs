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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing campaign landing page. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesPatch@.
module Network.Google.Resource.DFAReporting.LandingPages.Patch
    (
    -- * REST Resource
      LandingPagesPatchResource

    -- * Creating a Request
    , landingPagesPatch'
    , LandingPagesPatch'

    -- * Request Lenses
    , lppCampaignId
    , lppProFileId
    , lppPayload
    , lppId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesPatch@ method which the
-- 'LandingPagesPatch'' request conforms to.
type LandingPagesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               QueryParam "id" Int64 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] LandingPage :>
                     Patch '[JSON] LandingPage

-- | Updates an existing campaign landing page. This method supports patch
-- semantics.
--
-- /See:/ 'landingPagesPatch'' smart constructor.
data LandingPagesPatch' = LandingPagesPatch'
    { _lppCampaignId :: !Int64
    , _lppProFileId  :: !Int64
    , _lppPayload    :: !LandingPage
    , _lppId         :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppCampaignId'
--
-- * 'lppProFileId'
--
-- * 'lppPayload'
--
-- * 'lppId'
landingPagesPatch'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPage -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> LandingPagesPatch'
landingPagesPatch' pLppCampaignId_ pLppProFileId_ pLppPayload_ pLppId_ =
    LandingPagesPatch'
    { _lppCampaignId = pLppCampaignId_
    , _lppProFileId = pLppProFileId_
    , _lppPayload = pLppPayload_
    , _lppId = pLppId_
    }

-- | Landing page campaign ID.
lppCampaignId :: Lens' LandingPagesPatch' Int64
lppCampaignId
  = lens _lppCampaignId
      (\ s a -> s{_lppCampaignId = a})

-- | User profile ID associated with this request.
lppProFileId :: Lens' LandingPagesPatch' Int64
lppProFileId
  = lens _lppProFileId (\ s a -> s{_lppProFileId = a})

-- | Multipart request metadata.
lppPayload :: Lens' LandingPagesPatch' LandingPage
lppPayload
  = lens _lppPayload (\ s a -> s{_lppPayload = a})

-- | Landing page ID.
lppId :: Lens' LandingPagesPatch' Int64
lppId = lens _lppId (\ s a -> s{_lppId = a})

instance GoogleRequest LandingPagesPatch' where
        type Rs LandingPagesPatch' = LandingPage
        requestClient LandingPagesPatch'{..}
          = go _lppProFileId _lppCampaignId (Just _lppId)
              (Just AltJSON)
              _lppPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy LandingPagesPatchResource)
                      mempty
