.class public final synthetic Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "this$0"

    iget v6, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v6, :pswitch_data_0

    sget v1, Lcom/deepalhome/launcher/settings/AboutSettingsView;->$r8$clinit:I

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0e0053

    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0b0198

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0b019a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/widget/TextView;

    const v6, 0x7f0b0490

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, Landroid/widget/LinearLayout;

    const v6, 0x7f0b0172

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/TextView;

    const v6, 0x7f0b0492

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/widget/TextView;

    sget-object v6, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v26

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v26, :cond_0

    const v7, 0x7f06038c

    goto :goto_0

    :cond_0
    const v7, 0x7f06038b

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v26, :cond_1

    const v7, 0x7f060388

    goto :goto_1

    :cond_1
    const v7, 0x7f060389

    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v26, :cond_2

    const v7, 0x7f060259

    goto :goto_2

    :cond_2
    const v7, 0x7f060258

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v7, 0x7f0b0261

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const v11, 0x7f0b0197

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0b04e5

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0b0266

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0b0262

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0b0264

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0b0267

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0b0199

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v7

    div-int/2addr v7, v2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v6, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f13019b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v22, 0x0

    const v24, 0x7efe2

    const/4 v8, 0x0

    const/16 v16, 0x1

    move v3, v9

    move/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v11, v16

    const/16 v16, 0x0

    move/from16 v27, v12

    move-object/from16 v12, v16

    const/16 v16, 0x0

    move/from16 v28, v13

    move/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 p0, v14

    move-object/from16 v14, v16

    move-object/from16 v29, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v30, v10

    move-object v10, v1

    invoke-static/range {v6 .. v24}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    move-result-object v6

    const v7, 0x7f0b040a

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_3

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07009e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_4

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_5

    iput v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    :cond_6
    const v7, 0x7f0b0666

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/widget/FrameLayout;

    iput-boolean v4, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->isInPreview:Z

    new-instance v14, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v14, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    div-int/2addr v8, v2

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v14, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, v14, v1, v0, v2}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v14, v1, v4}, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    new-instance v2, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;

    move-object v6, v2

    move-object/from16 v7, p0

    move-object/from16 v8, v29

    move-object v9, v0

    move-object/from16 v10, v25

    move/from16 v11, v26

    move-object v13, v1

    invoke-direct/range {v6 .. v14}, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/LinearLayout;ZLandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;)V

    const v3, 0x7f0b0197

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    new-instance v1, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;

    move-object v6, v1

    move-object/from16 v8, v30

    move-object v10, v5

    move/from16 v11, v28

    move/from16 v12, v27

    invoke-direct/range {v6 .. v12}, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/LinearLayout;II)V

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->cachedDonateData:Lcom/deepalhome/launcher/http/DonateData;

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Unit;

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_a

    sget-object v3, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v3

    sget-object v5, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    if-eqz v3, :cond_9

    const-string v3, "/donate/s05/donate.json"

    invoke-interface {v5, v3}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getFile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    goto :goto_6

    :cond_9
    invoke-interface {v5}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getDonateInfo()Lretrofit2/Call;

    move-result-object v3

    :goto_6
    new-instance v5, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;

    move-object/from16 v6, p0

    invoke-direct {v5, v0, v6, v2, v4}, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/TextView;Lkotlin/jvm/internal/Lambda;I)V

    invoke-interface {v3, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_a
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->cachedDonorsData:Lcom/deepalhome/launcher/http/DonorsData;

    if-eqz v2, :cond_b

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/Unit;

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_d

    sget-object v2, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    sget-object v3, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    if-eqz v2, :cond_c

    const-string v2, "/donate/s05/donors.json"

    invoke-interface {v3, v2}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getFile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    goto :goto_8

    :cond_c
    invoke-interface {v3}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getDonors()Lretrofit2/Call;

    move-result-object v2

    :goto_8
    new-instance v3, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;

    const/4 v4, 0x1

    move-object/from16 v6, v30

    invoke-direct {v3, v0, v6, v1, v4}, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/TextView;Lkotlin/jvm/internal/Lambda;I)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_d
    return-void

    :pswitch_0
    sget v0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->$r8$clinit:I

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0066

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    sget-object v4, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1304e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v20, 0x0

    const v22, 0x7ffe2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v4 .. v22}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void

    :pswitch_1
    sget v0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->$r8$clinit:I

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v13

    sget-object v0, Lcom/deepalhome/launcher/util/ReleaseGroupDialogHelper;->INSTANCE:Lcom/deepalhome/launcher/util/ReleaseGroupDialogHelper;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f130413

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "getString(...)"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v10, Lcom/deepalhome/launcher/settings/AboutSettingsView$showReleaseGroupDialog$1;

    invoke-direct {v10, v1}, Lcom/deepalhome/launcher/settings/AboutSettingsView$showReleaseGroupDialog$1;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;)V

    const v1, 0x7f1303f6

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v4, 0x7f130184

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v3, v1

    move v8, v13

    move v11, v13

    invoke-static/range {v2 .. v14}, Lcom/deepalhome/launcher/util/ReleaseGroupDialogHelper;->show(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;ZZZLandroid/app/Activity;)Landroid/app/Dialog;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
