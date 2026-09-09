.class public final Lcom/deepalhome/launcher/util/DownLoadUtil$innerDownloadListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/DownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final connectEnd(IILcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "responseHeaderFields"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/DownloadListener;->connectEnd(IILcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "requestHeaderFields"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "responseHeaderFields"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "requestHeaderFields"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "info"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "cause"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    :cond_0
    return-void
.end method

.method public final downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "info"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/liulishuo/okdownload/DownloadListener;->downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    :cond_0
    return-void
.end method

.method public final fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/DownloadListener;->fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    :cond_0
    return-void
.end method

.method public final fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/DownloadListener;->fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    :cond_0
    return-void
.end method

.method public final fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/DownloadListener;->fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    :cond_0
    return-void
.end method

.method public final taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "cause"

    invoke-static {p2, p0}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/liulishuo/okdownload/DownloadListener;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V

    :cond_0
    return-void
.end method
