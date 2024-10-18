SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 89
AND p.CommentCount >= 7
AND p.CommentCount <= 34

AND p.Id = ph.PostId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;