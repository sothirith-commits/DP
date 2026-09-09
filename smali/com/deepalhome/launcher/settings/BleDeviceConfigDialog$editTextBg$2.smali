.class public final Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$editTextBg$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$editTextBg$2;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$editTextBg$2;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->isNight:Z

    if-eqz p0, :cond_0

    const p0, 0x7f0800ba

    goto :goto_0

    :cond_0
    const p0, 0x7f0800b9

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
