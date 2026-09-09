.class public final Lcom/deepalhome/launcher/settings/BleSettingsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final binding:Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;

.field public deviceListObserverJob:Lkotlinx/coroutines/Job;

.field public isNightMode:Z

.field public final timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->$r8$clinit:I

    sget-object v2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v2, 0x7f0e0031

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3, v0}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;

    const-string v1, "inflate(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->binding:Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p1}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p1, v0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->btnAddDevice:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v1, 0x12

    invoke-direct {p1, v1, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p0, v0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->btnBuyDevice:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static mergeDeviceItems(Ljava/util/List;Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v0, v1}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/tuotuotie/BleDevice;

    new-instance v2, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$DeepalTagItem;

    invoke-direct {v2, v1}, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$DeepalTagItem;-><init>(Lcom/deepalhome/tuotuotie/BleDevice;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/mitemp/MiTempDevice;

    new-instance v1, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$MiTempItem;

    invoke-direct {v1, p1}, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$MiTempItem;-><init>(Lcom/deepalhome/mitemp/MiTempDevice;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final observeDeviceState()V
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->deviceListObserverJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/lifecycle/ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$1;->INSTANCE:Landroidx/lifecycle/ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$1;

    const-string v1, "nextFunction"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/io/FileTreeWalk;

    new-instance v2, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;

    invoke-direct {v2, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lkotlin/io/FileTreeWalk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2;->INSTANCE:Landroidx/lifecycle/ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2;

    invoke-static {v1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-static {v0}, Lokhttp3/logging/Utf8Kt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v5, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2;

    invoke-direct {v5, p0, v2}, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2;-><init>(Lcom/deepalhome/launcher/settings/BleSettingsView;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->deviceListObserverJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/BleSettingsView;->updateUIMode(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleSettingsView;->observeDeviceState()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->deviceListObserverJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->deviceListObserverJob:Lkotlinx/coroutines/Job;

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final updateDeviceList(Ljava/util/List;)V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->isNightMode:Z

    if-eqz v6, :cond_0

    const v6, 0x7f06038c

    goto :goto_0

    :cond_0
    const v6, 0x7f06038b

    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->isNightMode:Z

    if-eqz v7, :cond_1

    const v7, 0x7f06038a

    goto :goto_1

    :cond_1
    const v7, 0x7f060389

    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iget-boolean v7, v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->isNightMode:Z

    if-eqz v7, :cond_2

    const v7, 0x7f08025b

    goto :goto_2

    :cond_2
    const v7, 0x7f08025a

    :goto_2
    iget-object v8, v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->binding:Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;

    iget-object v9, v8, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->devicesLeftColumn:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v9, v8, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->devicesRightColumn:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    iget-object v11, v8, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->devicesContainer:Landroid/widget/LinearLayout;

    iget-object v12, v8, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->emptyHintTv:Landroid/widget/TextView;

    if-eqz v10, :cond_3

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v2

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    const/4 v14, 0x0

    if-ltz v11, :cond_19

    check-cast v12, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem;

    rem-int/2addr v11, v1

    if-nez v11, :cond_4

    iget-object v11, v8, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->devicesLeftColumn:Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_4
    move-object v11, v9

    :goto_4
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    instance-of v15, v12, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$DeepalTagItem;

    const v16, -0x777778

    const-string v17, "#FFA500"

    const v18, -0xff0100

    const-string v4, "inflate(...)"

    if-eqz v15, :cond_f

    check-cast v12, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$DeepalTagItem;

    iget-object v12, v12, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$DeepalTagItem;->device:Lcom/deepalhome/tuotuotie/BleDevice;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    sget v19, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->$r8$clinit:I

    sget-object v19, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v3, 0x7f0e002d

    invoke-static {v15, v3, v14, v2, v14}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v14, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->deviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v15, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->batteryTv:Landroid/widget/TextView;

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->clickEventTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->doubleClickEventTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v20, v8

    iget-object v8, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->rotateEventTv:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v21, v9

    iget-object v9, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->longPressEventTv:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v22, v10

    iget-object v10, v12, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_5

    iget-object v10, v12, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    :cond_5
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v10, v12, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I

    if-ltz v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v14, v12, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    move/from16 v23, v13

    const v13, 0x7f1300de

    invoke-virtual {v10, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_6
    move/from16 v23, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v13, 0x7f1300df

    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v12, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v13, 0x1

    if-eq v10, v13, :cond_8

    const/4 v13, 0x2

    if-eq v10, v13, :cond_8

    const/4 v13, 0x3

    if-eq v10, v13, :cond_8

    const/4 v13, 0x4

    if-ne v10, v13, :cond_7

    move/from16 v10, v18

    goto :goto_6

    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_8
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    :cond_9
    move/from16 v10, v16

    :goto_6
    iget-object v13, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->statusIndicator:Landroid/view/View;

    invoke-virtual {v13, v10}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v10, Lcom/deepalhome/tuotuotie/EventType;->CLICK:Lcom/deepalhome/tuotuotie/EventType;

    iget-object v13, v12, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "getString(...)"

    move/from16 v24, v6

    const v6, 0x7f130127

    if-eqz v10, :cond_a

    sget-object v16, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/deepalhome/launcher/event/EventActionSerializer;->getDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v6, 0x7f13010e

    invoke-virtual {v14, v6, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/deepalhome/tuotuotie/EventType;->DOUBLE_CLICK:Lcom/deepalhome/tuotuotie/EventType;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v2, :cond_b

    sget-object v10, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/event/EventActionSerializer;->getDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v10, 0x7f130127

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v10, 0x7f130110

    invoke-virtual {v6, v10, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/deepalhome/tuotuotie/EventType;->ROTATE_CW:Lcom/deepalhome/tuotuotie/EventType;

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_c

    sget-object v6, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/event/EventActionSerializer;->getDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f130127

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v6, 0x7f130114

    invoke-virtual {v2, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/deepalhome/tuotuotie/EventType;->LONG_PRESS:Lcom/deepalhome/tuotuotie/EventType;

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_d

    sget-object v6, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/event/EventActionSerializer;->getDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f130127

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v6, 0x7f130112

    invoke-virtual {v2, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0, v12}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->configBtn:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v6, 0x10

    invoke-direct {v1, v6, v12}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v6, -0x1

    invoke-direct {v1, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070358

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_e
    move/from16 v9, v24

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_12

    :cond_f
    move/from16 v24, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v13

    const/16 v2, 0x8

    instance-of v1, v12, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$MiTempItem;

    if-eqz v1, :cond_e

    check-cast v12, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$MiTempItem;

    iget-object v1, v12, Lcom/deepalhome/launcher/settings/BleSettingsView$DeviceCardItem$MiTempItem;->device:Lcom/deepalhome/mitemp/MiTempDevice;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->$r8$clinit:I

    sget-object v6, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v6, 0x7f0e0094

    const/4 v8, 0x0

    invoke-static {v3, v6, v14, v8, v14}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->deviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->batteryTv:Landroid/widget/TextView;

    move/from16 v9, v24

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->readingTv:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v12, v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->updatedAtTv:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v13, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->displayName(Lcom/deepalhome/mitemp/MiTempDevice;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v14, 0x7f1300de

    invoke-virtual {v13, v14, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x7f1300df

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_b
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    if-eqz v6, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v13, v6, Lcom/deepalhome/mitemp/MiReading;->temperatureCelsius:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget v6, v6, Lcom/deepalhome/mitemp/MiReading;->humidityPercent:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v13, v6}, [Ljava/lang/Object;

    move-result-object v6

    const v13, 0x7f130315

    invoke-virtual {v8, v13, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f130316

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_c
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v10, 0x7f13030f

    invoke-virtual {v6, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f130310

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_d
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_16

    const/4 v8, 0x1

    if-eq v6, v8, :cond_14

    const/4 v8, 0x2

    if-eq v6, v8, :cond_15

    const/4 v10, 0x3

    if-ne v6, v10, :cond_13

    move/from16 v6, v18

    goto :goto_f

    :cond_13
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_14
    const/4 v8, 0x2

    :cond_15
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    :goto_e
    move/from16 v6, v16

    goto :goto_f

    :cond_16
    const/4 v8, 0x2

    goto :goto_e

    :goto_f
    iget-object v10, v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->statusIndicator:Landroid/view/View;

    invoke-virtual {v10, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, v1, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    const-string v10, "rawName"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "LYWSD03MMC"

    invoke-static {v6, v10}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v10, 0x0

    goto :goto_10

    :cond_17
    move v10, v2

    :goto_10
    iget-object v12, v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->renameBtn:Landroid/widget/Button;

    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_18

    const/4 v6, 0x0

    goto :goto_11

    :cond_18
    move v6, v2

    :goto_11
    iget-object v10, v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->reconnectBtn:Landroid/widget/Button;

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/4 v13, 0x7

    invoke-direct {v6, v13, v0, v1}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;

    const/4 v12, 0x0

    invoke-direct {v6, v1, v12}, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/mitemp/MiTempDevice;I)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;

    const/4 v10, 0x1

    invoke-direct {v6, v1, v10}, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/mitemp/MiTempDevice;I)V

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v6, -0x1

    invoke-direct {v1, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070358

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_12
    move v3, v2

    move v1, v8

    move v6, v9

    move v4, v10

    move v2, v12

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_3

    :cond_19
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v14

    :cond_1a
    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->isNightMode:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f06038a

    goto :goto_1

    :cond_1
    const v2, 0x7f060389

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz p1, :cond_2

    const p1, 0x7f08025b

    goto :goto_2

    :cond_2
    const p1, 0x7f08025a

    :goto_2
    iget-object v2, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->binding:Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;

    iget-object v3, v2, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->headerCard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, v2, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, v2, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->emptyHintTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->deviceFlow:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/settings/BleSettingsView;->mergeDeviceItems(Ljava/util/List;Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/BleSettingsView;->updateDeviceList(Ljava/util/List;)V

    return-void
.end method
