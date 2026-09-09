.class public final synthetic Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/mitemp/MiTempDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/mitemp/MiTempDevice;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/mitemp/MiTempDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "$device"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/mitemp/MiTempDevice;

    iget p0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/mitemp/MiTemp;->removeDevice(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/mitemp/MiTemp;->reconnect(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
