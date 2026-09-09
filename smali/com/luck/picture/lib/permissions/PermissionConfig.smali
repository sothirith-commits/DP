.class public final Lcom/luck/picture/lib/permissions/PermissionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAMERA:[Ljava/lang/String;

.field public static CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReadPermissionArray(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x22

    const-string v6, "android.permission.READ_MEDIA_VIDEO"

    const-string v7, "android.permission.READ_MEDIA_IMAGES"

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lt v0, v5, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    if-ne p1, v10, :cond_2

    if-lt p0, v5, :cond_0

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p0, v1, :cond_1

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne p1, v4, :cond_5

    if-lt p0, v5, :cond_3

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p0, v1, :cond_4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-ne p1, v3, :cond_7

    if-lt p0, v1, :cond_6

    new-array p0, v10, [Ljava/lang/String;

    aput-object v2, p0, v9

    goto :goto_0

    :cond_6
    new-array p0, v10, [Ljava/lang/String;

    aput-object v8, p0, v9

    :goto_0
    return-object p0

    :cond_7
    if-lt p0, v5, :cond_8

    filled-new-array {v0, v7, v6}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    if-ne p0, v1, :cond_9

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ne p1, v10, :cond_c

    if-lt p0, v1, :cond_b

    new-array p0, v10, [Ljava/lang/String;

    aput-object v7, p0, v9

    goto :goto_1

    :cond_b
    new-array p0, v10, [Ljava/lang/String;

    aput-object v8, p0, v9

    :goto_1
    return-object p0

    :cond_c
    if-ne p1, v4, :cond_e

    if-lt p0, v1, :cond_d

    new-array p0, v10, [Ljava/lang/String;

    aput-object v6, p0, v9

    goto :goto_2

    :cond_d
    new-array p0, v10, [Ljava/lang/String;

    aput-object v8, p0, v9

    :goto_2
    return-object p0

    :cond_e
    if-ne p1, v3, :cond_10

    if-lt p0, v1, :cond_f

    new-array p0, v10, [Ljava/lang/String;

    aput-object v2, p0, v9

    goto :goto_3

    :cond_f
    new-array p0, v10, [Ljava/lang/String;

    aput-object v8, p0, v9

    :goto_3
    return-object p0

    :cond_10
    if-lt p0, v1, :cond_11

    new-array p0, v4, [Ljava/lang/String;

    aput-object v7, p0, v9

    aput-object v6, p0, v10

    goto :goto_4

    :cond_11
    new-array p0, v10, [Ljava/lang/String;

    aput-object v8, p0, v9

    :goto_4
    return-object p0

    :cond_12
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v8, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
