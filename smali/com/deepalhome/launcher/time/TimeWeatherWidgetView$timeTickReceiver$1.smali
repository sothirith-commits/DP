.class public final Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$timeTickReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$timeTickReceiver$1;->this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$timeTickReceiver$1;->this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    invoke-static {p0}, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;->access$refreshTime(Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;)V

    return-void
.end method
