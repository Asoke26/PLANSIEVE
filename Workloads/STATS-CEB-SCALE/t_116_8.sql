SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 8234.0
AND p.CommentCount >= 3
AND v.VoteTypeId = 5
AND u.Views >= 24
AND u.Views <= 66
AND u.UpVotes >= 32
AND ph.CreationDate >= 229

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;