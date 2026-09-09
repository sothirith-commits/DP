.class public final synthetic Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->$r8$lambda$cJtK6c1tbVLDSDhUEUUUqtKuOh8(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->$r8$lambda$2onSndV55rtCp06i0zuYpp3SH5k(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
