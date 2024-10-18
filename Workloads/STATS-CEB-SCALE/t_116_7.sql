SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 3004.0
AND p.CommentCount >= 4
AND v.VoteTypeId = 2
AND u.Views >= 25
AND u.Views <= 1055
AND u.UpVotes >= 215
AND ph.CreationDate >= 121

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;