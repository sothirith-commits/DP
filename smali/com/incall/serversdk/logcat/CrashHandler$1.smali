.class Lcom/incall/serversdk/logcat/CrashHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/incall/serversdk/logcat/CrashHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/logcat/CrashHandler;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/logcat/CrashHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/logcat/CrashHandler$1;->this$0:Lcom/incall/serversdk/logcat/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
