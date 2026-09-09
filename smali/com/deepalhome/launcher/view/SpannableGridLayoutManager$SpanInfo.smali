.class public final Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo$Companion;

.field public static final SINGLE_CELL:Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;


# instance fields
.field public columnSpan:I

.field public final rowSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->Companion:Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo$Companion;

    new-instance v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;-><init>(II)V

    sput-object v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->SINGLE_CELL:Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->columnSpan:I

    iput p2, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->rowSpan:I

    return-void
.end method
