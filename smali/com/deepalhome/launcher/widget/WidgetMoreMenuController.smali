.class public final Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MENU_WIDTH:I


# instance fields
.field public final context:Landroid/content/Context;

.field public currentAnchor:Landroid/view/View;

.field public currentWidgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

.field public final menuBackground:Lcom/koushikdutta/async/Util$8;

.field public onDelete:Lkotlin/jvm/functions/Function2;

.field public onStyleChanged:Lkotlin/jvm/functions/Function1;

.field public outsideDismissEnabled:Z

.field public overlayHost:Landroid/view/ViewGroup;

.field public overlayRoot:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$Companion;-><init>(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->MENU_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->outsideDismissEnabled:Z

    new-instance v0, Lcom/koushikdutta/async/Util$8;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/Util$8;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->menuBackground:Lcom/koushikdutta/async/Util$8;

    return-void
.end method

.method public static createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;
    .locals 6

    const/16 v0, 0x10

    and-int/lit8 v1, p6, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p3, v2

    :cond_0
    and-int/lit8 v1, p6, 0x8

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit8 v4, p6, 0x10

    if-eqz v4, :cond_2

    move p4, v2

    :cond_2
    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_3

    sget-object p5, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createActionRow$1;->INSTANCE:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createActionRow$1;

    :cond_3
    iget-object p6, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    if-eqz p3, :cond_4

    const p3, 0x7f060049

    invoke-virtual {p6, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    goto :goto_2

    :cond_4
    sget-object p3, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p3

    if-eqz p3, :cond_5

    const p3, 0x7f06038c

    goto :goto_1

    :cond_5
    const p3, 0x7f06038b

    :goto_1
    invoke-virtual {p6, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    :goto_2
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    if-eqz v1, :cond_6

    new-instance p6, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;

    const/4 v1, 0x6

    invoke-direct {p6, p5, v1}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const p5, 0x7f070095

    invoke-virtual {p0, p5}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p6

    invoke-virtual {p0, p5}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p5

    invoke-virtual {v4, p6, v2, p5, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance p5, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p5, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const p6, 0x7f0700a7

    invoke-virtual {p0, p6}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result v1

    invoke-virtual {p0, p6}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result v5

    invoke-direct {p1, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x7f070097

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v4, p5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p1, p5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41900000    # 18.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p5, 0x3f800000    # 1.0f

    const/4 v0, -0x1

    invoke-direct {p2, v2, v0, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_7

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0800ef

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p6}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p3

    invoke-virtual {p0, p6}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const p2, 0x7f0700b3

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v4
.end method


# virtual methods
.method public final addDivider(Landroid/widget/LinearLayout;)V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060075

    goto :goto_0

    :cond_0
    const v1, 0x7f060074

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final buildMainMenu(Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)Landroid/widget/LinearLayout;
    .locals 11

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createMenuContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    instance-of v1, p2, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;

    if-eqz v1, :cond_0

    const v1, 0x7f1304df

    goto :goto_0

    :cond_0
    const v1, 0x7f1304de

    :goto_0
    iget-object v2, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "getString(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;

    invoke-direct {v8, p0, p1, p2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;-><init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v4, 0x7f080133

    const/16 v9, 0x18

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    instance-of v3, p2, Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->addDivider(Landroid/widget/LinearLayout;)V

    const v3, 0x7f1304dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;

    invoke-direct {v9, p0, p1, p2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;-><init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v5, 0x7f080166

    const/16 v10, 0xc

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    instance-of v1, p2, Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;->getMoreMenuActions()Ljava/util/List;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    iget-boolean v4, v4, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->enabled:Z

    if-eqz v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->addDivider(Landroid/widget/LinearLayout;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    iget v4, v2, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->iconRes:I

    iget-object v3, v2, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;

    invoke-direct {v8, v2, p0, p1, p2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;-><init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    iget-object v5, v2, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->title:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v9, 0xc

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method public final createMenuContainer()Landroid/widget/LinearLayout;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x7f0700b7

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method public final createSliderSection(ILjava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;
    .locals 8

    new-instance v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f060019

    invoke-virtual {p3, v2}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    sget-object p3, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f060075

    goto :goto_0

    :cond_0
    const p3, 0x7f060074

    :goto_0
    invoke-virtual {v1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance p3, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createSliderSection$seekBar$1$1;

    invoke-direct {p3, p4}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createSliderSection$seekBar$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x34

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p2, 0x7f070097

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p4

    const v1, 0x7f0700a2

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p2

    const v2, 0x7f070095

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result p0

    invoke-virtual {p1, p4, v1, p2, p0}, Landroid/view/View;->setPadding(IIII)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p4, -0x2

    invoke-direct {p0, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p3
.end method

.method public final dismiss()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->overlayRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->overlayRoot:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->menuBackground:Lcom/koushikdutta/async/Util$8;

    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    check-cast v0, Leightbitlab/com/blurview/BlurView;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    :cond_2
    iput-object v1, p0, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    return-void
.end method

.method public final dp(I)I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final showContent(Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->overlayHost:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->overlayRoot:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    const/4 v5, -0x1

    if-nez v3, :cond_1

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v7, 0x1d

    invoke-direct {v6, v7, v0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->overlayRoot:Landroid/widget/FrameLayout;

    :cond_1
    move-object v6, v3

    iget-boolean v3, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->outsideDismissEnabled:Z

    invoke-virtual {v6, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v7, 0x0

    if-eq v3, v2, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v8, v3, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v3, v7

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700b7

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Landroid/view/View;->setElevation(F)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->menuBackground:Lcom/koushikdutta/async/Util$8;

    iget-object v9, v4, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    check-cast v9, Leightbitlab/com/blurview/BlurView;

    if-eqz v9, :cond_5

    sget-object v10, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    :cond_5
    iput-object v7, v4, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    iget-object v9, v4, Lcom/koushikdutta/async/Util$8;->val$bb:Ljava/lang/Object;

    check-cast v9, Landroid/view/ViewGroup;

    sget-object v10, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v10

    if-eqz v10, :cond_6

    const v10, 0x7f06002b

    goto :goto_1

    :cond_6
    const v10, 0x7f060398

    :goto_1
    iget-object v11, v4, Lcom/koushikdutta/async/Util$8;->val$sink:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    const/4 v12, 0x0

    if-nez v9, :cond_7

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0700a3

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_7
    new-instance v13, Leightbitlab/com/blurview/BlurView;

    invoke-direct {v13, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {v11}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object v11, v13, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v14, Leightbitlab/com/blurview/R$styleable;->BlurView:[I

    invoke-virtual {v11, v7, v14, v12, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    invoke-virtual {v11, v12, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    iput v14, v13, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    const v11, 0x7f08026c

    invoke-virtual {v13, v11}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v11, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v13, v11}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f070053

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1f

    if-lt v14, v15, :cond_8

    new-instance v14, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v14}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v13, v9, v14}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object v9

    iput v11, v9, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-virtual {v9, v10}, Leightbitlab/com/blurview/PreDrawBlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurController;

    goto :goto_2

    :cond_8
    new-instance v14, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v9, v14}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object v9

    iput v11, v9, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-virtual {v9, v10}, Leightbitlab/com/blurview/PreDrawBlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurController;

    :goto_2
    invoke-virtual {v13, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    iput-object v13, v4, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    sget-object v3, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0c0018

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v9, v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v9, v10}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    move-object v3, v13

    :goto_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v4, p2

    invoke-virtual {v8, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v10, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->MENU_WIDTH:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/view/View;->measure(II)V

    sget-object v3, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;->INSTANCE:Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const v5, 0x7f0700b0

    invoke-virtual {v0, v5}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dp(I)I

    move-result v5

    instance-of v0, v1, Lcom/deepalhome/launcher/widget/BaseWidgetView;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Lcom/deepalhome/launcher/widget/BaseWidgetView;

    goto :goto_4

    :cond_9
    move-object v0, v7

    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->getMoreMenuScreenLeft()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v2

    move-object/from16 v1, p1

    move v2, v10

    move v3, v4

    move v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;->position(Landroid/view/ViewGroup;Landroid/view/View;IIILjava/lang/Integer;)Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;

    move-result-object v0

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v2, v0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;->x:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;->y:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v6, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
