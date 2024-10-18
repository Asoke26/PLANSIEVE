SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 17.0
AND p.CommentCount >= 21
AND v.VoteTypeId = 15
AND u.Views >= 24
AND u.Views <= 82
AND u.UpVotes >= 7
AND ph.CreationDate >= 276

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;