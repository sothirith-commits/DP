.class public final Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$maxBlurRadius$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$maxBlurRadius$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$maxBlurRadius$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
