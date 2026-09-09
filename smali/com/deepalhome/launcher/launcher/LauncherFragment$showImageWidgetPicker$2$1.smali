.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$showImageWidgetPicker$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $widgetId:I

.field final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showImageWidgetPicker$2$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iput p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showImageWidgetPicker$2$1;->$widgetId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "sourcePath"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showImageWidgetPicker$2$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showImageWidgetPicker$2$1;->$widgetId:I

    invoke-static {v0, p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$applyImageToWidget(Lcom/deepalhome/launcher/launcher/LauncherFragment;ILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
