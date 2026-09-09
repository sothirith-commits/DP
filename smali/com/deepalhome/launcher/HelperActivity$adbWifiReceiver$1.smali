.class public final Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
