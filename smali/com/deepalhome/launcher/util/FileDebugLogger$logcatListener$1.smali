.class public final Lcom/deepalhome/launcher/util/FileDebugLogger$logcatListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/util/FileDebugLogger;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/FileDebugLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/FileDebugLogger$logcatListener$1;->this$0:Lcom/deepalhome/launcher/util/FileDebugLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    const-string v0, "line"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/FileDebugLogger$logcatListener$1;->this$0:Lcom/deepalhome/launcher/util/FileDebugLogger;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/util/FileDebugLogger;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/util/FileDebugLogger$logcatListener$1;->this$0:Lcom/deepalhome/launcher/util/FileDebugLogger;

    iget-object v0, v0, Lcom/deepalhome/launcher/util/FileDebugLogger;->loggerTag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/FileDebugLogger$logcatListener$1;->this$0:Lcom/deepalhome/launcher/util/FileDebugLogger;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->logQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
