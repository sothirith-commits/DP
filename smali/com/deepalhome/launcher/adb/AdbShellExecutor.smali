.class public final Lcom/deepalhome/launcher/adb/AdbShellExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/adb/AdbShellExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/adb/AdbShellExecutor;

    invoke-direct {v0}, Lcom/deepalhome/launcher/adb/AdbShellExecutor;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/adb/AdbShellExecutor;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbShellExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native execute(Ljava/lang/String;ZJ)Lcom/deepalhome/launcher/adb/AdbShellResult;
.end method

.method public static native sanitizeOutput(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native silentlyUnlockPasswordIfNeeded()V
.end method
