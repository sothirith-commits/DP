.class public interface abstract Lcom/liulishuo/okdownload/DownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract connectEnd(IILcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
.end method

.method public abstract connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
.end method

.method public abstract connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
.end method

.method public abstract connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
.end method

.method public abstract downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
.end method

.method public abstract downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
.end method

.method public abstract fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
.end method

.method public abstract fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
.end method

.method public abstract fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
.end method

.method public abstract taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V
.end method

.method public abstract taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
.end method
