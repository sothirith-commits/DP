.class public final Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;

.field public static final presets:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;

    invoke-direct {v0}, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->INSTANCE:Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;

    invoke-direct {v3, v2, v2}, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->presets:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actions(Landroid/content/Context;IILkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 11

    sget-object v0, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->presets:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;

    iget v4, v3, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;->width:I

    if-ne v4, p1, :cond_0

    iget v3, v3, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;->height:I

    if-ne v3, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result p1

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;

    new-instance v7, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "compass_widget_resize_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu$actions$sizeActions$2$1;

    invoke-direct {v5, p3, p2}, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu$actions$sizeActions$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;)V

    const v3, 0x7f080157

    const/4 v4, 0x0

    iget-object v2, p2, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;->label:Ljava/lang/String;

    const/16 v6, 0x18

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_3
    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    const p2, 0x7f1304e1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p0, "getString(...)"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v7, 0x7f080157

    const/4 v9, 0x0

    const-string v5, "compass_widget_resize"

    const/16 v10, 0x28

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function0;I)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static applySquareContentSize(Landroid/view/View;II)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    move p1, p2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07009c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, p2, :cond_2

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, p2, :cond_2

    return-void

    :cond_2
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
