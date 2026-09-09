.class public final Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    sget p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->refreshActionStates()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
