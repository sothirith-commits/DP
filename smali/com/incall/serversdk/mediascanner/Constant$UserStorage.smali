.class public Lcom/incall/serversdk/mediascanner/Constant$UserStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/mediascanner/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStorage"
.end annotation


# static fields
.field public static LOCAL_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/incall/serversdk/mediascanner/MediaScannerManagerProxy;->getInstance()Lcom/incall/serversdk/mediascanner/MediaScannerManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/incall/serversdk/mediascanner/MediaScannerManagerProxy;->getScanLocalPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/incall/serversdk/mediascanner/Constant$UserStorage;->LOCAL_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
