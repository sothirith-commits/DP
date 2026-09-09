.class public final Lcom/deepalhome/launcher/app/FunctionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/app/FunctionListAdapter$Companion;

.field private static final PAYLOAD_BACKGROUND_STATE:Ljava/lang/String; = "background_state"

.field private static final PAYLOAD_RUNTIME_STATE:Ljava/lang/String; = "runtime_state"


# instance fields
.field private final attachedHolders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private currentConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private onEnterEditModeAndStartDragRequest:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field private onEnterEditModeRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private panelContentWidthPx:I

.field private panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

.field private final previewCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

.field private final previewMeasuredSizeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/deepalhome/launcher/navigation/model/GridItemType;",
            "Lkotlin/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$N5RbeJ5U3SWSKK-A_L6fxS5BjKk(Landroid/view/View;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;III)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onBindViewHolder$lambda$10(Landroid/view/View;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;III)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/app/FunctionListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/app/FunctionListAdapter$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->Companion:Lcom/deepalhome/launcher/app/FunctionListAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    new-instance v1, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    sget-object v0, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;->INSTANCE:Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;

    sget-object v1, Lcom/deepalhome/launcher/app/FunctionPanelMode;->NORMAL:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;->displayItems(Lcom/deepalhome/launcher/app/FunctionPanelMode;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->default$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Lcom/deepalhome/launcher/navigation/model/GridSchema;I)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->currentConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iput-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewMeasuredSizeCache:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->attachedHolders:Ljava/util/LinkedHashSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public static final synthetic access$applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    return-void
.end method

.method public static final synthetic access$containsType(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->containsType(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPanelMode$p(Lcom/deepalhome/launcher/app/FunctionListAdapter;)Lcom/deepalhome/launcher/app/FunctionPanelMode;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    return-object p0
.end method

.method public static final synthetic access$isNormalModePrimaryActionEnabled(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->isNormalModePrimaryActionEnabled(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$performNormalModePrimaryAction(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->performNormalModePrimaryAction(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V

    return-void
.end method

.method private final appAlignedStartInset(I)I
    .locals 2

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->resolvedPanelContentWidth()Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr p0, v1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method private final native applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
.end method

.method private final applyPanelSpecificPreviewBehavior(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 5

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    sget-object v0, Lcom/deepalhome/launcher/app/FunctionPanelMode;->NORMAL:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-ne p0, v0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const v0, 0x7f0b0588

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const p0, 0x7f0b0587

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    if-eqz p1, :cond_2

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    :cond_2
    if-eqz v4, :cond_c

    invoke-virtual {v4, v3}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->setPreferActiveContentColor(Z)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    if-eqz p1, :cond_3

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    :cond_3
    if-eqz v4, :cond_c

    invoke-virtual {v4, v3}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->setPreferActiveContentColor(Z)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    if-eqz p1, :cond_4

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    :cond_4
    if-eqz v4, :cond_c

    iget-boolean p0, v4, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v1, v4, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->render()V

    goto :goto_2

    :pswitch_4
    const p2, 0x7f0b058a

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    if-eqz p2, :cond_6

    move-object v4, p1

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    :cond_6
    if-eqz v4, :cond_c

    iget-boolean p1, v4, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->forceWhiteContentColor:Z

    if-ne p1, p0, :cond_7

    goto :goto_2

    :cond_7
    iput-boolean p0, v4, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->forceWhiteContentColor:Z

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    goto :goto_2

    :pswitch_5
    const p2, 0x7f0b0589

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    if-eqz p2, :cond_8

    move-object v4, p1

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    :cond_8
    if-eqz v4, :cond_c

    iget-boolean p1, v4, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->forceWhiteContentColor:Z

    if-ne p1, p0, :cond_9

    goto :goto_2

    :cond_9
    iput-boolean p0, v4, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->forceWhiteContentColor:Z

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    goto :goto_2

    :pswitch_6
    const p0, 0x7f0b0585

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    if-eqz p1, :cond_a

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v4, v3}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->setPreferActiveContentColor(Z)V

    goto :goto_2

    :pswitch_7
    instance-of p2, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    if-eqz p2, :cond_b

    move-object v4, p1

    check-cast v4, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    :cond_b
    if-eqz v4, :cond_c

    iput-boolean v2, v4, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    iput-boolean v2, v4, Lcom/deepalhome/launcher/music/LegacyMusicBar;->observeMusicChanges:Z

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->refreshBindingState()V

    invoke-virtual {v4, p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->setForceWhiteControls(Z)V

    :cond_c
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final attachPreviewTouchOverlay(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V
    .locals 2

    iget-object p0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewTouchOverlay:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    iget-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewTouchOverlay:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final native bindTouchInteractions(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
.end method

.method private final boundedPreviewWidth(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;II)I
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object p1, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->expectedSpanWidth(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-le p2, p0, :cond_2

    move p2, p0

    :cond_2
    return p2
.end method

.method private final clearTouchBindings(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V
    .locals 1

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewTouchOverlay:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private final containsType(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
    .locals 1

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    instance-of p1, p0, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private final createPreviewView(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    invoke-virtual {v0, p2}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->renderer(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;

    move-result-object v0

    iget-object v1, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/navigation/render/RenderMode;->PREVIEW:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    iget-object v3, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v3, v2}, Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewLayoutParamsForType(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->disableAllTouchRecursive(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->attachPreviewTouchOverlay(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewTouchOverlay:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    iput-object p2, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    return-object v0
.end method

.method private final disableAllTouchRecursive(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->disableAllTouchRecursive(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final ensurePreviewView(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Landroid/view/View;
    .locals 1

    iget-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne v0, p2, :cond_1

    iget-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->createPreviewView(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->unbindPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    iget-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->createPreviewView(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final eventPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    const/4 v1, 0x0

    aget v1, p0, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    sub-float/2addr p2, p0

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private final expectedSpanWidth(I)Ljava/lang/Integer;
    .locals 2

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->resolvedPanelContentWidth()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    int-to-float p1, p1

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr p1, v1

    mul-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final native fallbackBodyActive(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
.end method

.method private final native fallbackClimateActive(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
.end method

.method private final fallbackFanSpeedActive()Z
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getWindLevelFront()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final fallbackSeatClimateActive(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v1, v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatHeatingFrontRight()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->seatLevel(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatHeatingFrontLeft()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->seatLevel(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatVentilationFrontRight()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->seatLevel(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatVentilationFrontLeft()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->seatLevel(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final fallbackWindDirectionActive()Z
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->Companion:Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;->resolveFrontAirConditionEnabledForUi(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final fitPreviewIntoContainer(Landroid/widget/FrameLayout;Landroid/view/View;IILcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 3

    invoke-direct {p0, p2, p5}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->measureChildSize(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, v1

    :goto_0
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    goto :goto_4

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    if-eqz p5, :cond_2

    iget p5, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p5, v1

    :goto_2
    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object p5, v1

    :goto_3
    check-cast p5, Ljava/lang/Integer;

    if-eqz p5, :cond_c

    goto :goto_1

    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_9

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_7

    goto :goto_7

    :cond_7
    move-object v0, v1

    :goto_7
    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_8

    :cond_9
    move-object p0, v1

    :goto_8
    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_9
    int-to-float p3, p3

    int-to-float p5, p5

    div-float/2addr p3, p5

    int-to-float p4, p4

    int-to-float p0, p0

    div-float/2addr p4, p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p5, p4

    invoke-virtual {p2, p5}, Landroid/view/View;->setPivotX(F)V

    div-float/2addr p0, p4

    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p2, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_a

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    :cond_a
    if-eqz v1, :cond_b

    const/16 p0, 0x11

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_c
    return-void
.end method

.method private final native isActiveInNormalMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
.end method

.method private final isNormalModePrimaryActionEnabled(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
    .locals 1

    iget-object p0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const v0, 0x7f0b0587

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    instance-of v0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    if-eqz v0, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->isPrimaryActionEnabledForUi()Z

    move-result p2

    :cond_2
    :goto_1
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final isS05Branch()Z
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->current()Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final measureChildSize(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/deepalhome/launcher/navigation/model/GridItemType;",
            ")",
            "Lkotlin/Pair;"
        }
    .end annotation

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewMeasuredSizeCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq p2, v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewMeasuredSizeCache:Ljava/util/Map;

    invoke-interface {p0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2
.end method

.method private static final onBindViewHolder$lambda$10(Landroid/view/View;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;III)V
    .locals 7

    const-string v0, "$previewView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "this$0"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ne v0, p2, :cond_2

    iget-object p2, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    if-ne p2, p0, :cond_2

    iget-object p2, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p4

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final overlayToChildLocalPoint(Landroid/view/View;FF)Landroid/graphics/PointF;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr p0, v7

    div-float/2addr p0, v6

    add-float/2addr p0, v0

    sub-float/2addr p2, v5

    div-float/2addr p2, v1

    sub-float/2addr p3, p0

    div-float/2addr p3, v2

    cmpg-float p0, v3, p2

    if-gtz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_4

    cmpg-float p0, v3, p3

    if-gtz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_4

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_4
    return-object v4
.end method

.method private final parseEnabled(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->isS05Branch()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-ne p1, v1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const-string p0, "true"

    const-string v0, "enabled"

    const-string v1, "on"

    const-string v2, "open"

    const-string v3, "opened"

    filled-new-array {v1, v2, v3, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method private final parseInnerRecycleEnabled(Ljava/lang/String;)Z
    .locals 7

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    return p0

    :cond_2
    const-string v5, "opened"

    const-string v6, "true"

    const-string v0, "inner"

    const-string v1, "inner_loop"

    const-string v2, "inside"

    const-string v3, "on"

    const-string v4, "open"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    :cond_3
    return p0
.end method

.method private final parseMirrorFoldEnabled(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->isS05Branch()Z

    move-result p0

    if-eqz p0, :cond_0

    if-ne p1, v2, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-int p1, v3

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->isS05Branch()Z

    move-result p0

    if-eqz p0, :cond_3

    if-ne p1, v2, :cond_4

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    return v0

    :cond_5
    const-string v6, "true"

    const-string v7, "enabled"

    const-string v1, "fold"

    const-string v2, "folded"

    const-string v3, "close"

    const-string v4, "closed"

    const-string v5, "on"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    return v0
.end method

.method private final native performMusicPanelAction(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/MotionEvent;)Z
.end method

.method private final performNormalModePrimaryAction(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v1, "climate:primary:"

    const-string v2, ":panel:open_panel"

    const v3, 0x7f0b0588

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    if-eqz v0, :cond_0

    const p0, 0x7f0b0587

    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v4

    :goto_0
    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    goto :goto_1

    :cond_1
    move-object p0, v4

    :goto_1
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->isPrimaryActionEnabledForUi()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v4, p0

    :cond_2
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->performPrimaryAction()Z

    move-result p0

    if-ne p0, v6, :cond_d

    :goto_2
    move v5, v6

    goto/16 :goto_8

    :pswitch_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_3
    move-object p0, v4

    :goto_3
    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    if-eqz p1, :cond_4

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    :cond_4
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->performPrimaryAction()Z

    move-result p0

    if-ne p0, v6, :cond_d

    goto :goto_2

    :pswitch_2
    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_4

    :cond_5
    move-object p0, v4

    :goto_4
    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    if-eqz p1, :cond_6

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    :cond_6
    if-eqz v4, :cond_d

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v4, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$performPrimaryAction$1;

    invoke-direct {p2, v4}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$performPrimaryAction$1;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    if-ne p0, v6, :cond_d

    goto :goto_2

    :pswitch_3
    if-eqz v0, :cond_7

    const p0, 0x7f0b058a

    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    :cond_7
    move-object p0, v4

    :goto_5
    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    if-eqz p1, :cond_8

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    :cond_8
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->dismissWindDirectionPopup()V

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->WIND_DIRECTION:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object p3, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->open(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v6, :cond_d

    goto/16 :goto_2

    :pswitch_4
    if-eqz v0, :cond_9

    const p0, 0x7f0b0589

    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6

    :cond_9
    move-object p0, v4

    :goto_6
    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    if-eqz p1, :cond_a

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    :cond_a
    if-eqz v4, :cond_d

    invoke-virtual {v4, v6}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object p3, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;

    invoke-static {p3, p2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;->access$primaryActionDebounceKey(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->open(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v6, :cond_d

    goto/16 :goto_2

    :pswitch_5
    if-eqz v0, :cond_b

    const p0, 0x7f0b0585

    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_7

    :cond_b
    move-object p0, v4

    :goto_7
    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    if-eqz p1, :cond_c

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->performPanelPrimaryAction()Z

    move-result p0

    if-ne p0, v6, :cond_d

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, p3}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->performMusicPanelAction(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_d
    :goto_8
    :pswitch_7
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private final previewLayoutParamsForType(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    instance-of p0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p0, -0x2

    invoke-direct {p1, p0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 p0, 0x11

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-object p1
.end method

.method private final previewWidth(Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;I)I
    .locals 2

    iget-object p0, p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 p1, -0x1

    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/app/FunctionListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_2

    const/16 p1, 0x17

    if-eq v0, p1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object p0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    const/4 p1, 0x1

    if-ge p0, p1, :cond_1

    move p0, p1

    :cond_1
    mul-int/2addr p2, p0

    :cond_2
    return p2
.end method

.method private final refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V
    .locals 6

    invoke-direct {p0, p1, p4, p5}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->boundedPreviewWidth(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;II)I

    move-result v3

    invoke-direct {p0, p6}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->appAlignedStartInset(I)I

    move-result p4

    iget-object p5, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->contentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p5, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_0
    iput v3, p5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, p5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p5, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p4, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->contentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    move-object v2, p2

    move v4, p6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->fitPreviewIntoContainer(Landroid/widget/FrameLayout;Landroid/view/View;IILcom/deepalhome/launcher/navigation/model/GridItemType;)V

    return-void
.end method

.method private final refreshBoundRuntimeState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 6

    iget-object p1, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, 0x7f0b0588

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const v0, 0x7f0b0587

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    :cond_1
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->refreshFromCurrentState()V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    :cond_2
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->refreshFromCurrentState()V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    :cond_3
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->refreshFromCurrentState()V

    goto/16 :goto_2

    :pswitch_4
    const v0, 0x7f0b058a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    goto :goto_0

    :cond_4
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_b

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    sget-object v3, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    move-result-object v3

    iput-object v3, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    sget-object v3, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->Companion:Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;->resolveFrontAirConditionEnabledForUi(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->frontAirEnabledForUi:Z

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-ne v1, v3, :cond_5

    iput-object v2, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    :cond_5
    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    goto :goto_2

    :pswitch_5
    const v0, 0x7f0b0589

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    goto :goto_1

    :cond_6
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_b

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    sget-object v3, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    sget-object v4, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getWindLevelFront()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->committedWindLevel:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->resolveCommittedLevel(Lcom/deepalhome/launcher/carinfo/AirConditionState;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->committedWindLevel:I

    if-lez v1, :cond_7

    iput v1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->lastNonZeroWindLevel:I

    :cond_7
    iget-object v3, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_8

    iput-object v2, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    :cond_8
    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    goto :goto_2

    :pswitch_6
    const v0, 0x7f0b0585

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    if-eqz v1, :cond_9

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    :cond_9
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->refreshFromCurrentState()V

    goto :goto_2

    :pswitch_7
    instance-of v0, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    if-eqz v0, :cond_a

    move-object v2, p1

    check-cast v2, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->refreshBindingState()V

    :cond_b
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyPanelSpecificPreviewBehavior(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic refreshRuntimeState$default(Lcom/deepalhome/launcher/app/FunctionListAdapter;Ljava/util/Set;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refreshRuntimeState(Ljava/util/Set;)V

    return-void
.end method

.method private final resolvePreviewIsNight()Z
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    sget-object v0, Lcom/deepalhome/launcher/app/FunctionPanelMode;->NORMAL:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final resolvedPanelContentWidth()Ljava/lang/Integer;
    .locals 1

    iget p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelContentWidthPx:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final seatLevel(Ljava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :sswitch_1
    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :sswitch_2
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :sswitch_3
    const-string v0, "opened"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :sswitch_4
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :cond_3
    :goto_2
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x5ff074bf -> :sswitch_4
        -0x3c3c3797 -> :sswitch_3
        0xddf -> :sswitch_2
        0x34264a -> :sswitch_1
        0x36758e -> :sswitch_0
    .end sparse-switch
.end method

.method private final unbindPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V
    .locals 9

    iget-object v1, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v8, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    if-nez v8, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundPreviewItem:Lcom/deepalhome/launcher/navigation/model/GridItem;

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    iget-object v2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->currentConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object v2, v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v0

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    sget-object v1, Lcom/deepalhome/launcher/navigation/render/RenderMode;->PREVIEW:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-virtual {p0, v8, v0, v1}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object p0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    iput-object p0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundPreviewItem:Lcom/deepalhome/launcher/navigation/model/GridItem;

    return-void
.end method


# virtual methods
.method public final getGridSpan(I)I
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    const/16 p1, 0xc

    iget p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->rowCapacity:I

    div-int/2addr p1, p0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    if-nez p0, :cond_0

    int-to-long p0, p1

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    int-to-long p0, p1

    neg-long p0, p0

    :goto_0
    return-wide p0
.end method

.method public final getOnEnterEditModeAndStartDragRequest()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onEnterEditModeAndStartDragRequest:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnEnterEditModeRequest()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onEnterEditModeRequest:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnItemClickListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onBindViewHolder(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onBindViewHolder(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;I)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    const-string v0, "holder"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object v1, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iget-object v14, v0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-boolean v2, v0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->isPlaceholder:Z

    iget-object v3, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->functionName:Landroid/widget/TextView;

    iget-object v4, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewTouchOverlay:Landroid/view/View;

    iget-object v5, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->contentContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move-object v0, v10

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v10, v0, v13}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewWidth(Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;I)I

    move-result v15

    sget-object v2, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v2, v14}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v0

    iget v0, v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v10, v11, v15, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->boundedPreviewWidth(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;II)I

    move-result v3

    invoke-direct {v10, v13}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->appAlignedStartInset(I)I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v10, Lcom/deepalhome/launcher/app/FunctionListAdapter;->currentConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object v4, v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v3, v14

    invoke-static/range {v2 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v1

    invoke-direct {v10, v11, v14}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->ensurePreviewView(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Landroid/view/View;

    move-result-object v9

    iget-object v2, v10, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    sget-object v3, Lcom/deepalhome/launcher/navigation/render/RenderMode;->PREVIEW:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-virtual {v2, v9, v1, v3}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    iget-object v2, v10, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->resolvePreviewIsNight()Z

    move-result v4

    invoke-virtual {v2, v9, v1, v4, v3}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V

    iput-object v1, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundPreviewItem:Lcom/deepalhome/launcher/navigation/model/GridItem;

    invoke-direct {v10, v9, v14}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyPanelSpecificPreviewBehavior(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V

    iget-object v8, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v8}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ne v0, v12, :cond_3

    iget-object v0, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    if-ne v0, v9, :cond_3

    iget-object v0, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v0, v14, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V

    :cond_3
    :goto_0
    move-object/from16 v19, v9

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;

    const/16 v17, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v9

    move-object v4, v14

    move-object/from16 v5, p0

    move v6, v15

    move-object/from16 v18, v7

    move/from16 v7, v16

    move-object v10, v8

    move v8, v13

    move-object/from16 v19, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;-><init>(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILandroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1
    invoke-static/range {v19 .. v19}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ne v0, v12, :cond_6

    iget-object v0, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    move-object/from16 v10, v19

    if-ne v0, v10, :cond_8

    iget-object v0, v11, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v0, v14, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V

    goto :goto_2

    :cond_6
    move-object/from16 v10, v19

    goto :goto_2

    :cond_7
    move-object/from16 v10, v19

    new-instance v9, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;

    const/16 v17, 0x1

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v10

    move-object v4, v14

    move-object/from16 v5, p0

    move v6, v15

    move/from16 v7, v16

    move v8, v13

    move-object v12, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;-><init>(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILandroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;IIII)V

    invoke-virtual {v10, v12}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_8
    :goto_2
    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne v14, v0, :cond_9

    new-instance v9, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v14

    move-object/from16 v5, p0

    move v6, v15

    move/from16 v7, v16

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;III)V

    invoke-virtual {v10, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    invoke-direct {v0, v11, v14}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->bindTouchInteractions(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    return-void

    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->unbindPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v1, ""

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->clearTouchBindings(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payloads"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object v1, v0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->isPlaceholder:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "runtime_state"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refreshBoundRuntimeState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    invoke-direct {p0, p1, v1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    return-void

    :cond_0
    const-string v0, "background_state"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;
    .locals 8

    const-string p0, "parent"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p2, 0x800003

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0700ab

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, p2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f0800c6

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v0, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x4

    invoke-virtual {v6, p1}, Landroid/view/View;->setTextAlignment(I)V

    const/4 p1, 0x2

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x106000b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41800000    # 16.0f

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    move-object v0, p0

    move-object v2, p2

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/TextView;)V

    return-object p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onViewAttachedToWindow(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V
    .locals 10

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->attachedHolders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v9, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    if-nez v9, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundPreviewItem:Lcom/deepalhome/launcher/navigation/model/GridItem;

    if-nez v1, :cond_2

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    iget-object v2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->currentConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object v3, v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v8}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v1

    iput-object v1, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundPreviewItem:Lcom/deepalhome/launcher/navigation/model/GridItem;

    :cond_2
    iget-object v2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    sget-object v3, Lcom/deepalhome/launcher/navigation/render/RenderMode;->PREVIEW:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-virtual {v2, v9, v1, v3}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->previewCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->resolvePreviewIsNight()Z

    move-result v4

    invoke-virtual {v2, v9, v1, v4, v3}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V

    invoke-direct {p0, v9, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyPanelSpecificPreviewBehavior(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onViewDetachedFromWindow(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->attachedHolders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->unbindPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onViewRecycled(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->attachedHolders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->unbindPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    iget-object v0, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->clearTouchBindings(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final refreshRuntimeState(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/deepalhome/launcher/navigation/model/GridItemType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    sget-object v1, Lcom/deepalhome/launcher/app/FunctionPanelMode;->NORMAL:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_5

    check-cast v3, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object v3, v3, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "runtime_state"

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    move v2, v4

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v0

    :cond_6
    return-void
.end method

.method public final refreshVisibleMusicState()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    sget-object v1, Lcom/deepalhome/launcher/app/FunctionPanelMode;->NORMAL:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->attachedHolders:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object v2, v1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    instance-of v4, v2, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    if-eqz v4, :cond_2

    check-cast v2, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->refreshBindingState()V

    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final setOnEnterEditModeAndStartDragRequest(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onEnterEditModeAndStartDragRequest:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnEnterEditModeRequest(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onEnterEditModeRequest:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnItemClickListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final native startDrag(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
.end method

.method public final updateConfig(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "config"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->currentConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    sget-object v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->currentConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object v2, v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    sget-object v3, Lcom/deepalhome/launcher/app/FunctionPanelMode;->EDIT:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    if-eq v2, v3, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/io/LinesSequence;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$1;->INSTANCE:Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    sget-object v3, Lkotlin/sequences/SequencesKt___SequencesKt$distinct$1;->INSTANCE:Lkotlin/sequences/SequencesKt___SequencesKt$distinct$1;

    const-string v4, "selector"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/sequences/DistinctSequence;

    invoke-direct {v4, v2, v3}, Lkotlin/sequences/DistinctSequence;-><init>(Lkotlin/sequences/FilteringSequence;Lkotlin/sequences/SequencesKt___SequencesKt$distinct$1;)V

    new-instance v2, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;-><init>(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    invoke-static {v4, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_5

    check-cast v3, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object v3, v3, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "background_state"

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    return-void
.end method

.method public final updatePanelContentWidth(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelContentWidthPx:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelContentWidthPx:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final updatePanelMode(Lcom/deepalhome/launcher/app/FunctionPanelMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->panelMode:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    sget-object v0, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;->INSTANCE:Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;->displayItems(Lcom/deepalhome/launcher/app/FunctionPanelMode;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;->items:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
