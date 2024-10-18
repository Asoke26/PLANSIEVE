SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score>=-1
AND p.ViewCount<=5896
AND p.AnswerCount>=0
AND v.VoteTypeId=2
AND c.CreationDate<=1541
AND p.CreationDate>=37

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;