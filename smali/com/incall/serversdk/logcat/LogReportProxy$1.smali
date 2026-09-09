.class Lcom/incall/serversdk/logcat/LogReportProxy$1;
.super Lcom/incall/serversdk/logcat/IExportLogListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/incall/serversdk/logcat/LogReportProxy;->exportLogFile(Lcom/incall/serversdk/logcat/ExportLogFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/logcat/LogReportProxy;

.field final val$listener:Lcom/incall/serversdk/logcat/ExportLogFileListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/logcat/LogReportProxy;Lcom/incall/serversdk/logcat/ExportLogFileListener;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/logcat/LogReportProxy$1;->this$0:Lcom/incall/serversdk/logcat/LogReportProxy;

    iput-object p2, p0, Lcom/incall/serversdk/logcat/LogReportProxy$1;->val$listener:Lcom/incall/serversdk/logcat/ExportLogFileListener;

    invoke-direct {p0}, Lcom/incall/serversdk/logcat/IExportLogListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doExport()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/logcat/LogReportProxy$1;->val$listener:Lcom/incall/serversdk/logcat/ExportLogFileListener;

    invoke-interface {p0}, Lcom/incall/serversdk/logcat/ExportLogFileListener;->doExport()V

    return-void
.end method
