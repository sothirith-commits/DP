.class public final Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;->INSTANCE:Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/widget/WidgetInfo;

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->isWidgetClassSupported(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
