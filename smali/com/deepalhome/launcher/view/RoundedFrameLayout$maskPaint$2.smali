.class public final Lcom/deepalhome/launcher/view/RoundedFrameLayout$maskPaint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/view/RoundedFrameLayout$maskPaint$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/view/RoundedFrameLayout$maskPaint$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout$maskPaint$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/view/RoundedFrameLayout$maskPaint$2;->INSTANCE:Lcom/deepalhome/launcher/view/RoundedFrameLayout$maskPaint$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object p0
.end method
