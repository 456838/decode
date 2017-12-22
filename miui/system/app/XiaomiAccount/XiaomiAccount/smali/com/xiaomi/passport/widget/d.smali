.class public abstract Lcom/xiaomi/passport/widget/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public vR:Landroid/widget/ListAdapter;

.field public vS:Z

.field public vT:I

.field public vU:Landroid/content/Context;

.field public vV:Landroid/database/Cursor;

.field public vW:Landroid/view/View;

.field public vX:I

.field public vY:[Ljava/lang/CharSequence;

.field public vZ:Ljava/lang/CharSequence;

.field public wa:Landroid/content/DialogInterface$OnClickListener;

.field public wb:Ljava/lang/CharSequence;

.field public wc:Landroid/content/DialogInterface$OnClickListener;

.field public wd:Ljava/lang/CharSequence;

.field public we:Landroid/content/DialogInterface$OnCancelListener;

.field public wf:Landroid/content/DialogInterface$OnKeyListener;

.field public wg:Landroid/content/DialogInterface$OnClickListener;

.field public wh:Ljava/lang/CharSequence;

.field public wi:Ljava/lang/CharSequence;

.field public wj:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/passport/widget/d;->vX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/passport/widget/d;->vT:I

    iput-object p1, p0, Lcom/xiaomi/passport/widget/d;->vU:Landroid/content/Context;

    return-void
.end method
