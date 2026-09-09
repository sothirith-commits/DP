.class public final synthetic Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/config/UserConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/config/UserConfig;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;->f$0:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;->f$0:Lcom/deepalhome/launcher/config/UserConfig;

    const-string v0, "$config"

    iget p0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavCardModeBackgroundEnabled(Z)V

    return-void

    :pswitch_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavCardModeBackgroundEnabled(Z)V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavBlurEnabled(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
