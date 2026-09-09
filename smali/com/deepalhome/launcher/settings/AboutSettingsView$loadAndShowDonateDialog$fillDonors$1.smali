.class public final Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $donorHeaderTv:Landroid/widget/TextView;

.field final synthetic $donorListContainer:Landroid/widget/LinearLayout;

.field final synthetic $donorLoadingTv:Landroid/widget/TextView;

.field final synthetic $subTextColor:I

.field final synthetic $textColor:I

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/LinearLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$donorHeaderTv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$donorLoadingTv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$donorListContainer:Landroid/widget/LinearLayout;

    iput p5, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$textColor:I

    iput p6, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$subTextColor:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/deepalhome/launcher/http/DonorsData;

    const-string v2, "data"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/http/DonorsData;->description:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$donorHeaderTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$donorLoadingTv:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    iget-object v1, v1, Lcom/deepalhome/launcher/http/DonorsData;->items:Ljava/util/List;

    if-eqz v1, :cond_7

    new-instance v3, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1$invoke$$inlined$sortedByDescending$1;

    invoke-direct {v3}, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1$invoke$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$donorListContainer:Landroid/widget/LinearLayout;

    iget v5, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$textColor:I

    iget v0, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$fillDonors$1;->$subTextColor:I

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/http/DonorItem;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v7, Lcom/deepalhome/launcher/settings/AboutSettingsView;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700b7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7, v8, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v10, v6, Lcom/deepalhome/launcher/http/DonorItem;->user:Ljava/lang/String;

    const-string v12, ""

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move-object v10, v12

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x2

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v9, v10, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v14, 0x1

    invoke-virtual {v9, v2, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x40400000    # 3.0f

    invoke-direct {v2, v8, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v2, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v8, v6, Lcom/deepalhome/launcher/http/DonorItem;->amount:Ljava/lang/String;

    if-nez v8, :cond_3

    const-string v8, "0"

    :cond_3
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v11, 0x7f130191

    invoke-virtual {v14, v11, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x7f060019

    invoke-virtual {v8, v11}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v10, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-virtual {v2, v8, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x40200000    # 2.5f

    const/4 v8, -0x2

    const/4 v14, 0x0

    invoke-direct {v11, v14, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v11, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v13, v6, Lcom/deepalhome/launcher/http/DonorItem;->channel:Ljava/lang/String;

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    move-object v13, v12

    :goto_3
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v11, v10, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v10, -0x2

    const/4 v15, 0x0

    invoke-direct {v13, v15, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v6, v6, Lcom/deepalhome/launcher/http/DonorItem;->time:Ljava/lang/String;

    if-eqz v6, :cond_5

    move-object v12, v6

    :cond_5
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x40900000    # 4.5f

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x800005

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    return-object v2
.end method
