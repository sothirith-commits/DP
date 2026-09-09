.class public final Lcom/deepalhome/launcher/util/LocationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

.field public static final LOGCAT_FILTER:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

.field public static activeListener:Lcom/deepalhome/launcher/util/LocationUtil$startOneTimeLocation$listener$1;

.field public static final coordinateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static isLogcatLocationListenerAdded:Z

.field public static lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

.field public static locationManager:Landroid/location/LocationManager;

.field public static final logcatLocationListener:Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;

.field public static final oneTimeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v2, Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-direct {v2}, Lcom/deepalhome/launcher/util/LocationUtil;-><init>()V

    sput-object v2, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    new-instance v8, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    new-instance v9, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-class v3, Lcom/deepalhome/launcher/util/LocationUtil;

    const-string v4, "shouldInspectLog"

    const/4 v1, 0x1

    const-string v5, "shouldInspectLog(Ljava/lang/String;)Z"

    const/4 v6, 0x0

    const/16 v7, 0xb

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v8, v1, v9, v0}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;I)V

    sput-object v8, Lcom/deepalhome/launcher/util/LocationUtil;->LOGCAT_FILTER:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->coordinateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->oneTimeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;

    sput-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->logcatLocationListener:Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$parseCoordinateFromLog(Lcom/deepalhome/launcher/util/LocationUtil;Ljava/lang/String;)Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ", speed"

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    const-string v2, "= "

    invoke-static {p1, v2, v0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq p0, v5, :cond_0

    if-eq v2, v5, :cond_0

    if-le p0, v2, :cond_0

    add-int/2addr v2, v4

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, "substring(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;-><init>(DD)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/text/Regex;

    const-string v1, "(-?\\d+\\.\\d+)\\s*,\\s*(-?\\d+\\.\\d+)"

    invoke-direct {p0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    new-instance v2, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;-><init>(DD)V

    move-object p1, v2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static final access$shouldInspectLog(Lcom/deepalhome/launcher/util/LocationUtil;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "onLocationChanged"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "lon"

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "lat"

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static addCoordinateCallback(Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->coordinateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean p0, Lcom/deepalhome/launcher/util/LocationUtil;->isLogcatLocationListenerAdded:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->queryCurrentPosition()Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/deepalhome/launcher/util/LocationUtil;->updateCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    :cond_2
    sput-boolean v0, Lcom/deepalhome/launcher/util/LocationUtil;->isLogcatLocationListenerAdded:Z

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v1, Lcom/deepalhome/launcher/util/LocationUtil;->logcatLocationListener:Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;

    sget-object v2, Lcom/deepalhome/launcher/util/LocationUtil;->LOGCAT_FILTER:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    invoke-virtual {p0, v1, v2}, Lcom/deepalhome/launcher/util/LogcatUtil;->addOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V

    sput-boolean v0, Lcom/deepalhome/launcher/util/LocationUtil;->isLogcatLocationListenerAdded:Z

    :goto_0
    return-void
.end method

.method public static hasLocationPermission()Z
    .locals 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_1
    return v2
.end method

.method public static maybeRemoveLogcatListener()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->coordinateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/deepalhome/launcher/util/LocationUtil;->isLogcatLocationListenerAdded:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v1, Lcom/deepalhome/launcher/util/LocationUtil;->logcatLocationListener:Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/LogcatUtil;->removeOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/util/LocationUtil;->isLogcatLocationListenerAdded:Z

    :cond_2
    return-void
.end method

.method public static removeCoordinateCallback(Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->coordinateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->maybeRemoveLogcatListener()V

    return-void
.end method

.method public static requestPermission(Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;)V
    .locals 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/blankj/utilcode/util/PermissionUtils;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/blankj/utilcode/util/PermissionUtils;->sInstance:Lcom/blankj/utilcode/util/PermissionUtils;

    iput-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mSingleCallback:Ljava/lang/Object;

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/lang/Object;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/io/Serializable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/io/Serializable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/io/Serializable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/lang/Object;

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/io/Serializable;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/io/Serializable;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/io/Serializable;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mSingleCallback:Ljava/lang/Object;

    check-cast p0, Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;

    if-eqz p0, :cond_4

    iget-object v0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v2, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/io/Serializable;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/io/Serializable;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;->callback(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/blankj/utilcode/util/PermissionUtils;->mSingleCallback:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    sget-object p0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/HashMap;

    sget-object p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_delegate"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "TYPE"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V
    .locals 13

    const-string v0, "Request location updates failed: "

    const-string v1, "startOneTimeLocation failed: "

    const-string v2, "LocationUtil"

    const-string v3, "callback"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->hasLocationPermission()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "Location permission not granted"

    invoke-interface {p1, p0}, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;->onLocationFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v3, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->queryCurrentPosition()Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/deepalhome/launcher/util/LocationUtil;->updateCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    invoke-interface {p1, v3}, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;->onLocationResult(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    return-void

    :cond_1
    sget-object v3, Lcom/deepalhome/launcher/util/LocationUtil;->locationManager:Landroid/location/LocationManager;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v3, p0, Landroid/location/LocationManager;

    if-eqz v3, :cond_2

    check-cast p0, Landroid/location/LocationManager;

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    sput-object v3, Lcom/deepalhome/launcher/util/LocationUtil;->locationManager:Landroid/location/LocationManager;

    :cond_3
    move-object v5, v3

    const-string p0, "network"

    const-string v3, "gps"

    if-nez v5, :cond_5

    :catch_0
    :cond_4
    move-object v8, v4

    goto :goto_2

    :cond_5
    :try_start_0
    filled-new-array {v3, p0}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    if-eqz v7, :cond_7

    new-instance v8, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    move-object v8, v4

    :goto_1
    if-eqz v8, :cond_6

    :goto_2
    if-eqz v8, :cond_8

    invoke-static {v8}, Lcom/deepalhome/launcher/util/LocationUtil;->updateCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    invoke-interface {p1, v8}, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;->onLocationResult(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    return-void

    :cond_8
    const/4 v6, 0x1

    if-eqz v5, :cond_9

    invoke-virtual {v5, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_9

    move-object v6, v3

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5, p0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_a

    move-object v6, p0

    goto :goto_3

    :cond_a
    move-object v6, v4

    :goto_3
    if-nez v6, :cond_b

    const-string p0, "No location provider available"

    invoke-interface {p1, p0}, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;->onLocationFailed(Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->stopActiveLocationListener()V

    sget-object p0, Lcom/deepalhome/launcher/util/LocationUtil;->oneTimeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/deepalhome/launcher/util/LocationUtil$startOneTimeLocation$listener$1;

    invoke-direct {v10}, Lcom/deepalhome/launcher/util/LocationUtil$startOneTimeLocation$listener$1;-><init>()V

    sput-object v10, Lcom/deepalhome/launcher/util/LocationUtil;->activeListener:Lcom/deepalhome/launcher/util/LocationUtil$startOneTimeLocation$listener$1;

    if-eqz v5, :cond_e

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_6

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;

    new-instance v2, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v1, p1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->stopActiveLocationListener()V

    goto :goto_8

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;

    new-instance v2, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v1, p1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->stopActiveLocationListener()V

    :cond_e
    :goto_8
    return-void
.end method

.method public static stopActiveLocationListener()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/util/LocationUtil;->activeListener:Lcom/deepalhome/launcher/util/LocationUtil$startOneTimeLocation$listener$1;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->activeListener:Lcom/deepalhome/launcher/util/LocationUtil$startOneTimeLocation$listener$1;

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->oneTimeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public static updateCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V
    .locals 4

    sput-object p0, Lcom/deepalhome/launcher/util/LocationUtil;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->coordinateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;

    new-instance v2, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1, p0}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
