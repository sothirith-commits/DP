.class public final Lcom/deepalhome/mitemp/MiTempPermissionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    invoke-direct {v0}, Lcom/deepalhome/mitemp/MiTempPermissionHelper;-><init>()V

    sput-object v0, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasConnectPermission(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

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

.method public static hasRequiredPermissions(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "context"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1f

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    if-lt v0, v3, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    aput-object v3, v0, v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    aput-object v4, v0, v3

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    aput-object v4, v0, v2

    :goto_0
    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method
