.class public Lcom/autonavi/aps/amapapi/model/AmapLoc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/autonavi/aps/amapapi/model/AmapLoc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field private I:Lorg/json/JSONObject;

.field private a:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:D

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/aps/amapapi/model/a;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/a;-><init>()V

    sput-object v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    iput v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    iput v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    iput-boolean v5, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Z

    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->I:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    iput-boolean v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Z

    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->I:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    iput-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    iput-boolean v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Z

    iput-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->I:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "provider"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "lon"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-string/jumbo v0, "lat"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    const-string/jumbo v0, "altitude"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_4
    const-string/jumbo v0, "acc"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_5
    const-string/jumbo v0, "accuracy"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    const-string/jumbo v0, "speed"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    const-string/jumbo v0, "dir"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    const-string/jumbo v0, "bearing"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    const-string/jumbo v0, "retype"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    const-string/jumbo v0, "citycode"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    const-string/jumbo v0, "desc"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    const-string/jumbo v0, "adcode"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    const-string/jumbo v0, "country"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    const-string/jumbo v0, "province"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    const-string/jumbo v0, "city"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    const-string/jumbo v0, "road"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    const-string/jumbo v0, "street"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    const-string/jumbo v0, "number"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_14
    const-string/jumbo v0, "poiname"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    :goto_15
    const-string/jumbo v0, "aoiname"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_16
    const-string/jumbo v0, "errorCode"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_17
    const-string/jumbo v0, "errorInfo"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_18
    const-string/jumbo v0, "locationType"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_19
    const-string/jumbo v0, "locationDetail"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    :goto_1a
    const-string/jumbo v0, "cens"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_1b
    const-string/jumbo v0, "poiid"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_1c
    const-string/jumbo v0, "pid"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    :goto_1d
    const-string/jumbo v0, "floor"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_1e
    const-string/jumbo v0, "flr"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    :goto_1f
    const-string/jumbo v0, "coord"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_20
    const-string/jumbo v0, "mcell"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_21
    const-string/jumbo v0, "time"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    :goto_22
    const-string/jumbo v0, "district"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    :goto_23
    const-string/jumbo v0, "isOffset"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    :goto_24
    const-string/jumbo v0, "isReversegeo"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isReversegeo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AmapLoc"

    const-string/jumbo v2, "AmapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "lon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v0, "altitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(D)V

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v0, "acc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v0, "accuracy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v0, "speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(F)V

    goto/16 :goto_7

    :cond_9
    const-string/jumbo v0, "dir"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(F)V

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v0, "bearing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(F)V

    goto/16 :goto_9

    :cond_b
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_c
    const-string/jumbo v0, "retype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_d
    const-string/jumbo v0, "citycode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_e
    const-string/jumbo v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_f
    const-string/jumbo v0, "adcode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_10
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_11
    const-string/jumbo v0, "province"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_12
    const-string/jumbo v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_13
    const-string/jumbo v0, "road"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_14
    const-string/jumbo v0, "street"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_15
    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_16
    const-string/jumbo v0, "poiname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_17
    const-string/jumbo v0, "aoiname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_18
    const-string/jumbo v0, "errorCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    goto/16 :goto_17

    :cond_19
    const-string/jumbo v0, "errorInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1a
    const-string/jumbo v0, "locationType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    goto/16 :goto_19

    :cond_1b
    const-string/jumbo v0, "locationDetail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_1c
    const-string/jumbo v0, "cens"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_1d
    const-string/jumbo v0, "poiid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_1e
    const-string/jumbo v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_1f
    const-string/jumbo v0, "floor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_20
    const-string/jumbo v0, "flr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_21
    const-string/jumbo v0, "coord"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_22
    const-string/jumbo v0, "mcell"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_23
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    goto/16 :goto_22

    :cond_24
    const-string/jumbo v0, "district"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o(Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_25
    const-string/jumbo v0, "isOffset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_24
.end method

.method private A(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    :cond_0
    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    return-void
.end method

.method private z(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    return-object v0
.end method

.method public D()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_0
    return-object v4

    :cond_1
    return-object v4

    :cond_2
    return-object v4
.end method

.method public E()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->I:Lorg/json/JSONObject;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    return v0
.end method

.method public a(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "#.000000"

    invoke-static {v0, v1}, Lcom/loc/bd;->aDv(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->I:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    return v0
.end method

.method public b(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "#.000000"

    invoke-static {v0, v1}, Lcom/loc/bd;->aDv(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "#.0"

    invoke-static {v0, v1}, Lcom/loc/bd;->aDv(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    return-void

    :cond_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "success"

    :goto_1
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    goto :goto_1

    :pswitch_4
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    goto :goto_1

    :pswitch_5
    const-string/jumbo v0, "\u89e3\u6790XML\u51fa\u9519"

    goto :goto_1

    :pswitch_6
    const-string/jumbo v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    goto :goto_1

    :pswitch_7
    const-string/jumbo v0, "KEY\u9519\u8bef"

    goto :goto_1

    :pswitch_8
    const-string/jumbo v0, "\u5176\u4ed6\u9519\u8bef"

    goto :goto_1

    :pswitch_9
    const-string/jumbo v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    goto :goto_1

    :pswitch_a
    const-string/jumbo v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    goto :goto_1

    :pswitch_b
    const-string/jumbo v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    goto :goto_1

    :pswitch_c
    const-string/jumbo v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "altitude"

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "speed"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "bearing"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "retype"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "citycode"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "desc"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "adcode"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "country"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "province"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "city"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "district"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "road"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "street"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "number"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiname"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "cens"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiid"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "floor"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "coord"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "mcell"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "errorCode"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "errorInfo"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "locationType"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "locationDetail"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "aoiname"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->I:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    :pswitch_1
    const-string/jumbo v2, "time"

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :pswitch_2
    const-string/jumbo v2, "provider"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "lon"

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "lat"

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "accuracy"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "isOffset"

    iget-boolean v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "isReversegeo"

    iget-boolean v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AmapLoc"

    const-string/jumbo v3, "toStr"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1
    :try_start_2
    const-string/jumbo v2, "offpct"

    invoke-static {v0, v2}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "offpct"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->I:Lorg/json/JSONObject;

    const-string/jumbo v4, "offpct"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    return-void
.end method

.method public c(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "#.0"

    invoke-static {v0, v1}, Lcom/loc/bd;->aDv(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    return-void
.end method

.method public h()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    return-wide v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    return-void
.end method

.method public i()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    return-wide v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    return-void
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    return-void
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    return-wide v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Ljava/lang/String;

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\\*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    :goto_1
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    return-void

    :cond_0
    return-void

    :cond_1
    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "F"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 p1, 0x0

    const-string/jumbo v1, "AmapLoc"

    const-string/jumbo v2, "setFloor"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    goto :goto_0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Ljava/lang/String;

    return-object v0
.end method
