SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 70
AND p.Score <= 98
AND u.DownVotes >= 113
AND pl.CreationDate <= 605
AND v.CreationDate >= 364
AND b.Date >= 190
AND b.Date <= 1240

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;