.class public final Lcom/google/android/material/internal/StateListAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final animationListener:Landroidx/transition/Transition$3;

.field public runningAnimator:Landroid/animation/ValueAnimator;

.field public final tuples:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/transition/Transition$3;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroidx/transition/Transition$3;

    return-void
.end method


# virtual methods
.method public final addState([ILandroid/animation/ValueAnimator;)V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroidx/transition/Transition$3;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
