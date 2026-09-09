.class public final Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    sget v0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->updateUpdateBadgeVisibility(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
