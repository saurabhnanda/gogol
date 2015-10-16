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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of landing pages for the specified campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesList@.
module Network.Google.Resource.DFAReporting.LandingPages.List
    (
    -- * REST Resource
      LandingPagesListResource

    -- * Creating a Request
    , landingPagesList'
    , LandingPagesList'

    -- * Request Lenses
    , lplCampaignId
    , lplProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesList@ method which the
-- 'LandingPagesList'' request conforms to.
type LandingPagesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] LandingPagesListResponse

-- | Retrieves the list of landing pages for the specified campaign.
--
-- /See:/ 'landingPagesList'' smart constructor.
data LandingPagesList' = LandingPagesList'
    { _lplCampaignId :: !Int64
    , _lplProFileId  :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplCampaignId'
--
-- * 'lplProFileId'
landingPagesList'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPagesList'
landingPagesList' pLplCampaignId_ pLplProFileId_ =
    LandingPagesList'
    { _lplCampaignId = pLplCampaignId_
    , _lplProFileId = pLplProFileId_
    }

-- | Landing page campaign ID.
lplCampaignId :: Lens' LandingPagesList' Int64
lplCampaignId
  = lens _lplCampaignId
      (\ s a -> s{_lplCampaignId = a})

-- | User profile ID associated with this request.
lplProFileId :: Lens' LandingPagesList' Int64
lplProFileId
  = lens _lplProFileId (\ s a -> s{_lplProFileId = a})

instance GoogleRequest LandingPagesList' where
        type Rs LandingPagesList' = LandingPagesListResponse
        requestClient LandingPagesList'{..}
          = go _lplProFileId _lplCampaignId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy LandingPagesListResource)
                      mempty
