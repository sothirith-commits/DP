.class public final Lcom/deepalhome/launcher/HelperActivity$performAutoGrant$timer$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic $countdown:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $dialog:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic this$0:Lcom/deepalhome/launcher/HelperActivity;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/appcompat/app/AlertDialog;Lcom/deepalhome/launcher/HelperActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/deepalhome/launcher/HelperActivity$performAutoGrant$timer$1;->$countdown:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/HelperActivity$performAutoGrant$timer$1;->$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/HelperActivity$performAutoGrant$timer$1;->this$0:Lcom/deepalhome/launcher/HelperActivity;

    const-wide/16 p1, 0x1388

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final native onFinish()V
.end method

.method public final native onTick(J)V
.end method
