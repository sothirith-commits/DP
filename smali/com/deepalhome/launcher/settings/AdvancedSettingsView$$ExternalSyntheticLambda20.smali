.class public final synthetic Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;->f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;->f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v2, "$isUpdating"

    iget p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    invoke-static {v1, p1, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->initS05VoiceAutoNaviMode$selectMode(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    :cond_0
    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_1

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    invoke-static {v1, p1, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->initS05VoiceAutoNaviMode$selectMode(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
