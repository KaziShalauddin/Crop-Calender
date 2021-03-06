USE [CropCalenderApp_DB]
GO


INSERT [dbo].[LandType] ( [LandTypeName], [LandTypeDesc]) VALUES ( N'বসতভিটা', NULL)
INSERT [dbo].[LandType] ( [LandTypeName], [LandTypeDesc]) VALUES ( N'উচু জমি', NULL)
INSERT [dbo].[LandType] ( [LandTypeName], [LandTypeDesc]) VALUES ( N'মাঝারি উচু', NULL)
INSERT [dbo].[LandType] ( [LandTypeName], [LandTypeDesc]) VALUES ( N'মাঝারি নিচু', NULL)
INSERT [dbo].[LandType] ( [LandTypeName], [LandTypeDesc]) VALUES ( N'নিচু জমি', NULL)



INSERT [dbo].[Season] ( [SeasonName], [SeasonDesc]) VALUES ( N'প্রথম মৌসুম', N'প্রথম মৌসুম')
INSERT [dbo].[Season] ( [SeasonName], [SeasonDesc]) VALUES ( N'দ্বিতীয় মৌসুম', N'দ্বিতীয় মৌসুম')
INSERT [dbo].[Season] ( [SeasonName], [SeasonDesc]) VALUES ( N'তৃতীয় মৌসুম', N'তৃতীয় মৌসুম')
INSERT [dbo].[Season] ( [SeasonName], [SeasonDesc]) VALUES ( N'চতুর্থ মৌসুম', N'চতুর্থ মৌসুম')
INSERT [dbo].[Season] ( [SeasonName], [SeasonDesc]) VALUES ( N'পঞ্চম মৌসুম', N'পঞ্চম মৌসুম')


INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 1', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 1', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 2', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 2', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 3', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 3', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 4', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 4', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 4', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 5', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 5', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ( [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES ( N'ফসলের নাম 5', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')



INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 101, 1, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন' , 1)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 101, 1, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 101, 1, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 102, 2, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 102, 2, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 102, 2, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 103, 3, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 103, 3, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 103, 3, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 104, 4, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 104, 4, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 104, 4, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 104, 4, N'ফসলের নাম 4', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 4)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 105, 3, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 105, 3, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2)
INSERT [dbo].[CropAdvices] ( [AdviceID], [LandTypeID], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonID]) VALUES ( 105, 3, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3)


INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_kln', N'খুলনা')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_rjs', N'রাজশাহী')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_dhk', N'ঢাকা')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_brs', N'বরিশাল')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_rng', N'রংপুর')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_ctg', N'চট্টগ্রাম')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_slt', N'সিলেট')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_mnh', N'ময়মনসিংহ')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_cml', N'কুমিল্লা')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_rgm', N'রাঙ্গামাটি')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_frd', N'ফরিদপুর')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_jsr', N'যশোর')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_bgr', N'বগুড়া')
INSERT [dbo].[Area] ( [AreaBBSID], [AreaName]) VALUES ( N'reg_dnj', N'দিনাজপুর')



INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3068', N'নরসিংদী', N'reg_dhk')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5081', N'রাজশাহী', N'reg_rjs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5070', N'চাপাইনবাবগঞ্জ', N'reg_rjs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5069', N'নাটোর', N'reg_rjs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5088', N'সিরাজগঞ্জ', N'reg_bgr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5010', N'বগুড়া', N'reg_bgr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5064', N'নওগাঁ', N'reg_rjs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5038', N'জয়পুরহাট', N'reg_bgr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5076', N'পাবনা', N'reg_bgr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3026', N'ঢাকা', N'reg_dhk')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3029', N'ফরিদপুর', N'reg_frd')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3033', N'গাজীপুর', N'reg_dhk')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3039', N'জামালপুর', N'reg_mnh')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3048', N'কিশোরগঞ্জ', N'reg_mnh')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3054', N'মাদারীপুর', N'reg_frd')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3056', N'মানিকগঞ্জ', N'reg_dhk')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3059', N'মুন্সিগঞ্জ', N'reg_dhk')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3061', N'ময়মনসিংহ', N'reg_mnh')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3067', N'নারায়নগঞ্জ', N'reg_dhk')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3072', N'নেত্রকোনা', N'reg_mnh')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3082', N'রাজবাড়ী', N'reg_frd')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3086', N'শরিয়তপুর', N'reg_frd')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3089', N'শেরপুর', N'reg_mnh')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3093', N'টাঙ্গাইল', N'reg_dhk')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'3035', N'গোপালগঞ্জ', N'reg_frd')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2019', N'কুমিল্লা', N'reg_cml')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2013', N'চাঁদপুর', N'reg_cml')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2012', N'বি-বাড়িয়া', N'reg_cml')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'6091', N'সিলেট', N'reg_slt')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'6058', N'মৌলভীবাজার', N'reg_slt')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'6036', N'হবিগঞ্জ', N'reg_slt')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'6090', N'সুনামগঞ্জ', N'reg_slt')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2015', N'চট্টগ্রাম', N'reg_ctg')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2022', N'কক্সবাজার', N'reg_ctg')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2075', N'নোয়াখালী', N'reg_ctg')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2030', N'ফেনী', N'reg_ctg')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2051', N'লক্ষীপুর', N'reg_ctg')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2084', N'রাঙ্গামাটি', N'reg_rgm')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2046', N'খাগড়াছড়ি', N'reg_rgm')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'2003', N'বান্দরবন', N'reg_rgm')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5585', N'রংপুর', N'reg_rng')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5532', N'গাইবান্ধা', N'reg_rng')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5549', N'কুড়িগ্রাম', N'reg_rng')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5552', N'লালমনিরহাট', N'reg_rng')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5573', N'নীলফামারী', N'reg_rng')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5527', N'দিনাজপুর', N'reg_dnj')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5594', N'ঠাকুরগাঁও', N'reg_dnj')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'5577', N'পঞ্চগড়', N'reg_dnj')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4041', N'যশোর', N'reg_jsr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4044', N'ঝিনাইদহ', N'reg_jsr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4055', N'মাগুরা', N'reg_jsr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4065', N'নড়াইল', N'reg_kln')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4047', N'খুলনা', N'reg_kln')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4001', N'বাগেরহাট', N'reg_kln')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4087', N'সাতক্ষীরা', N'reg_kln')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4050', N'কুষ্টিয়া', N'reg_jsr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4018', N'চুয়াডাঙ্গা', N'reg_jsr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'4057', N'মেহেরপুর', N'reg_jsr')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'1006', N'বরিশাল', N'reg_brs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'1079', N'পিরোজপুর', N'reg_brs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'1042', N'ঝালকাঠি', N'reg_brs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'1078', N'পটুয়াখালি', N'reg_brs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'1004', N'বরগুনা', N'reg_brs')
INSERT [dbo].[District] ( [DistBbsId], [DistrictName], [AreaBbsId]) VALUES ( N'1009', N'ভোলা', N'reg_brs')





INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'306860', N'নরসিংদী', N'3068')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'306863', N'পলাশ', N'3068')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'306864', N'রায়পুরা', N'3068')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'306876', N'শিবপুর', N'3068')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'552743', N'ঘোড়ামারা', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'508134', N'গোদাগাড়ী', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'306860', N'নরসিংদী সদর', N'3068')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501006', N'আদমদিঘী', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501020', N'বগুরা সদর', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501027', N'দুনাট', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501033', N'দুপচানচিয়া', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501040', N'গাবতলী', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501054', N'কাহালু', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501067', N'নন্দিগ্রাম', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501081', N'সারিয়াকান্দি', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501085', N'শাহাজাহানপুর', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501088', N'শেরপুর', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501094', N'শিবগঙ্জ', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'501095', N'সোনাতলা', N'5010')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'508110', N'বাঘা', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'508125', N'চরঘাটা', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'508131', N'দূ্গাপুর', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'508153', N'মোহনপুর', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'508172', N'পাবা', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'508182', N'পুঠিয়া', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'508194', N'তানোর', N'5081')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506486', N'সাপাহার', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506428', N'ধামইরহাট', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506475', N'পত্নীতলা', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506479', N'পরশা', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506450', N'মহাদেবপুর', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506406', N'বাদালগাছি', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506469', N'নিয়ামতপুর', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506447', N'মানদা', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506485', N'রানীনগর', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506403', N'আতড়াই', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'506460', N'নওগাঁ সদর', N'5064')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'305610', N'দৌলতপুর', N'3056')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'305622', N'ঘিওর', N'3056')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'305628', N'হরিরামপুর', N'3056')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'305646', N'মানিকগঞ্জ সদর', N'3056')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'305670', N'সাতুরিয়া', N'3056')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'305678', N'শিবালয়া', N'3056')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'305682', N'সিঙ্গার', N'3056')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201940', N'দেবিদ্বার', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201909', N'বরুড়া', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201915', N'ব্রাহ্মণপাড়া', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201927', N'চান্দিনা', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201931', N'চৌদ্দগ্রাম', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201936', N'দাউদকান্দি', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201954', N'হোমনা', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201972', N'লাকসাম', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201981', N'মুরাদনগর', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201987', N'নাঙ্গলকোট', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201967', N'কুমিল্লা সদর', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201975', N'মেঘনা', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201974', N'মনোহরগঞ্জ', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201933', N'সদরদক্ষিণ', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201994', N'তিতাস', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201918', N'বুড়িচং', N'2019')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'203014', N'ছাগলনাইয়া উপজেলা', N'2030')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'203029', N'ফেনী সদর', N'2030')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'203094', N'সোনাগাজী উপজেলা', N'2030')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'203041', N'ফুলগাজী উপজেলা', N'2030')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'203051', N'পরশুরাম', N'2030')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'203025', N'দাগনভূঞা', N'2030')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201213', N'ব্রাহ্মণবাড়িয়া সদর', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201263', N'কসবা', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201290', N'নাসিরনগর', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201294', N'সরাইল উপজেলা', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201233', N'আশুগঞ্জ', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201202', N'আখাউড়া', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201285', N'নবীনগর', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201204', N'বাঞ্ছারামপুর', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201207', N'বিজয়নগর', N'2012')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208487', N'রাঙ্গামাটি সদর', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208436', N'কাপ্তাই', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208425', N'কাউখালী', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208407', N'বাঘাইছড়ি', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208421', N'বরকল', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208458', N'লংগদু', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208478', N'রাজস্থলী', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208429', N'বিলাইছড়ি', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208447', N'জুরাছড়ি', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'208475', N'নানিয়ারচর', N'2084')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207587', N'নোয়াখালী', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207521', N'কোম্পানীগঞ্জ', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207507', N'বেগমগঞ্জ', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207536', N'হাতিয়া', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207585', N'সুবর্ণচর', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207547', N'কবিরহাট', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207580', N'সেনবাগ', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207510', N'চাটখিল', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'207583', N'সোনাইমুড়ী', N'2075')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201347', N'হাইমচর', N'2013')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201358', N'কচুয়া', N'2013')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201395', N'শাহরাস্তি', N'2013')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201322', N'চাঁদপুর সদর', N'2013')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201376', N'মতলব', N'2013')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201349', N'হাজীগঞ্জ', N'2013')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201379', N'মতলব', N'2013')
INSERT [dbo].[SubDistrict] ( [SubDistBbsId], [SubDistrictName], [DistBbsID]) VALUES ( N'201345', N'ফরিদগঞ্জ', N'2013')


INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 101)
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 102)
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 103)
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 104)
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 105)
