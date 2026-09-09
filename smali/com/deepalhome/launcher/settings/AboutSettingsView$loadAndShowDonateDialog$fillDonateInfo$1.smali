.class public final Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $descriptionTv:Landroid/widget/TextView;

.field final synthetic $donateView:Landroid/view/View;

.field final synthetic $isNight:Z

.field final synthetic $previewImageView:Landroid/widget/ImageView;

.field final synthetic $qrCodeContainer:Landroid/widget/LinearLayout;

.field final synthetic $qrLoadingTv:Landroid/widget/TextView;

.field final synthetic $viewContainer:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/LinearLayout;ZLandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$qrLoadingTv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$descriptionTv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$qrCodeContainer:Landroid/widget/LinearLayout;

    iput-boolean p5, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$isNight:Z

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$viewContainer:Landroid/widget/FrameLayout;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$donateView:Landroid/view/View;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$previewImageView:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/deepalhome/launcher/http/DonateData;

    const-string v2, "data"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$qrLoadingTv:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/deepalhome/launcher/http/DonateData;->description:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$descriptionTv:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$descriptionTv:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07009f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v1, v1, Lcom/deepalhome/launcher/http/DonateData;->items:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v10, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    iget-object v11, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$qrCodeContainer:Landroid/widget/LinearLayout;

    iget-boolean v12, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$isNight:Z

    iget-object v13, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$viewContainer:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$donateView:Landroid/view/View;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonateInfo$1;->$previewImageView:Landroid/widget/ImageView;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/deepalhome/launcher/http/DonateItem;

    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x1

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-nez v12, :cond_2

    const/high16 v4, 0xa000000

    invoke-virtual {v15, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v15, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v7}, Lcom/deepalhome/launcher/http/DonateItem;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;

    move-object v4, v9

    move-object v5, v10

    move-object v6, v13

    move-object v8, v14

    move-object v3, v9

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/http/DonateItem;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v15, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x8

    goto :goto_1

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
