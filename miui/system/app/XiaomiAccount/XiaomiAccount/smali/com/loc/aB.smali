.class public final Lcom/loc/aB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final anw:J

.field private final anx:[Ljava/io/InputStream;

.field private final any:[J

.field final synthetic anz:Lcom/loc/bB;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/loc/bB;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1

    iput-object p1, p0, Lcom/loc/aB;->anz:Lcom/loc/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/aB;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/loc/aB;->anw:J

    iput-object p5, p0, Lcom/loc/aB;->anx:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/loc/aB;->any:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/bB;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/loc/bU;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/loc/aB;-><init>(Lcom/loc/bB;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/loc/aB;->anx:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v1, p0, Lcom/loc/aB;->anx:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/loc/Y;->axo(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
