.class public final Lcom/umeng/analytics/pro/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/umeng/analytics/pro/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/umeng/analytics/pro/f;

    sget-object v1, Lcom/umeng/analytics/pro/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/e;->b:Ljava/lang/String;

    new-instance v4, Lcom/umeng/analytics/pro/c;

    invoke-direct {v4, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v2, v4, Lcom/umeng/analytics/pro/c;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->a()V

    sput-object v0, Lcom/umeng/analytics/pro/f$a;->a:Lcom/umeng/analytics/pro/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
