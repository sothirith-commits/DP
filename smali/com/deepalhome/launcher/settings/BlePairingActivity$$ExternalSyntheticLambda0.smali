.class public final synthetic Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;

    const-string v0, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->startPairing()V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
