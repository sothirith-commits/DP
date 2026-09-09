.class public final Lcom/luck/picture/lib/permissions/PermissionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mInstance:Lcom/luck/picture/lib/permissions/PermissionChecker;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static getInstance()Lcom/luck/picture/lib/permissions/PermissionChecker;
    .locals 2

    sget-object v0, Lcom/luck/picture/lib/permissions/PermissionChecker;->mInstance:Lcom/luck/picture/lib/permissions/PermissionChecker;

    if-nez v0, :cond_1

    const-class v0, Lcom/luck/picture/lib/permissions/PermissionChecker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/luck/picture/lib/permissions/PermissionChecker;->mInstance:Lcom/luck/picture/lib/permissions/PermissionChecker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/luck/picture/lib/permissions/PermissionChecker;

    invoke-direct {v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;-><init>()V

    sput-object v1, Lcom/luck/picture/lib/permissions/PermissionChecker;->mInstance:Lcom/luck/picture/lib/permissions/PermissionChecker;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/luck/picture/lib/permissions/PermissionChecker;->mInstance:Lcom/luck/picture/lib/permissions/PermissionChecker;

    return-object v0
.end method

.method public static isCheckReadStorage(Landroid/content/Context;I)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x2

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    if-ne p1, v2, :cond_1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_4
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/permissions/PermissionResultCallback;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iput-object p2, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPermissionResultCallback:Lcom/luck/picture/lib/permissions/PermissionResultCallback;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/16 v0, 0x2766

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lcom/luck/picture/lib/permissions/PermissionResultCallback;->onGranted()V

    :cond_5
    :goto_1
    return-void
.end method
